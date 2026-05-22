extends Node

var opus_encoder: TwovoipOpusEncoder
var opus_stream: AudioStreamOpus
var opus_playback: AudioStreamPlaybackOpus
var opus_chunk_size: int = 1920
var audio_chunk_size: int
var audio_player: AudioStreamPlayer3D
var jitter_buffer: Array = []
var playback_started: bool = false

func setupAudio(id):
	set_multiplayer_authority(id)
	audio_player = get_parent().get_node("AudioStreamPlayer3D")

	opus_stream = AudioStreamOpus.new()
	opus_stream.opus_sample_rate = 48000
	opus_stream.opus_channels = 1
	audio_player.stream = opus_stream

	if is_multiplayer_authority():
		opus_encoder = TwovoipOpusEncoder.new()
		opus_encoder.create_sampler(AudioServer.get_input_mix_rate(), 48000, 1, false)
		opus_encoder.create_opus_encoder(32000, 5, false)
		audio_chunk_size = opus_encoder.calc_audio_chunk_size(opus_chunk_size)
		AudioServer.set_input_device_active(true)
		set_process(true)

func _process(delta):
	if not is_multiplayer_authority() or not opus_encoder:
		return
	var chunk = AudioServer.get_input_frames(audio_chunk_size)
	if chunk.size() == 0:
		return
	opus_encoder.process_pre_encoded_chunk(chunk, opus_chunk_size, false, false)
	var packet = opus_encoder.encode_chunk(PackedByteArray(), 1.0)
	if packet.size() > 0:
		_send_audio.rpc(packet)

@rpc("any_peer", "call_remote", "unreliable")
func _send_audio(packet: PackedByteArray):
	if not opus_playback:
		audio_player.stop()
		audio_player.play()
		opus_playback = audio_player.get_stream_playback()
	if packet.size() == 0 or not opus_playback:
		return

	if not playback_started:
		jitter_buffer.append(packet)
		if jitter_buffer.size() >= 10:
			for p in jitter_buffer:
				opus_playback.push_opus_packet(p, 0, 0)
			jitter_buffer.clear()
			opus_playback.mark_end_opus_stream(true)
			playback_started = true
	else:
		opus_playback.push_opus_packet(packet, 0, 0)
