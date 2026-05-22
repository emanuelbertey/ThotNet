extends Node3D

#static var peer = ENetMultiplayerPeer.new()
const playerScene = preload('res://addons/thot/example/voip-3d/world.tscn')

func createServer():
	#peer.create_server(12806)
	#multiplayer.multiplayer_peer = peer
	
	Thot.add_server(self ,"enet", 12806, "lobby")
	var peer = Thot.server_thot("enet",12806)
	multiplayer.multiplayer_peer = peer
	prints(Thot.get_servers())
	# 1. Instanciar la escena desde la constante pre-cargada
	var new_scene_instance = playerScene.instantiate()
	
	# 2. Configurar la variable en la instancia nueva
	new_scene_instance.is_play = $CanvasLayer/CheckButton.button_pressed
	
	# 3. Cambiar la escena correctamente
	get_tree().root.add_child(new_scene_instance)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = new_scene_instance

func createClient():
	# Recuerda cambiar 'localhost' por la IP real en producción
	#peer.create_client('localhost', 12806)
	#multiplayer.multiplayer_peer = peer
	
	Thot.add_client(self ,"enet", 'localhost',12806,"lobby")
	var peer = Thot.client_thot("enet" , 12806 )
	multiplayer.multiplayer_peer = peer
	
	get_tree().change_scene_to_file('res://addons/thot/example/voip-3d/world.tscn')

func _on_host_button_down():
	createServer()

func _on_connect_to_server_button_down():
	createClient()
