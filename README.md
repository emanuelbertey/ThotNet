# P2P Communication App with Godot 4.4  
# Aplicación de Comunicación P2P con Godot 4.4

---

## Descripción / Description

- **ES:** Esta aplicación permite la comunicación P2P (Peer-to-Peer) entre dispositivos usando diferentes métodos de implementación en Godot 4.4: ENet, WebSocket, TCP, UDP, torrent y nostr. Su objetivo principal es conectar dispositivos y facilitar el intercambio de información, datos o mensajes.  
- **EN:** This application enables P2P (Peer-to-Peer) communication between devices using different implementation methods in Godot 4.4: ENet, WebSocket, TCP, UDP, torrent, and nostr. Its main goal is to connect devices and allow the exchange of information, data, or messages.

---

## Características / Features

- **ES:** **Conexiones P2P**: Soporte para conexiones P2P usando ENet, WebSocket, WebRTC, TCP, UDP, y en beta torrent y nostr.  
- **EN:** **P2P Connections**: Support for P2P connections using ENet, WebSocket, WebRTC, TCP, UDP, and in beta torrent and nostr.

- **ES:** **Intercambio de Información**: Permite enviar y recibir mensajes entre dos dispositivos conectados.  
- **EN:** **Information Exchange**: Allows sending and receiving messages between two connected devices.

- **ES:** **Implementación Modular**: Cada método de conexión está implementado como un módulo independiente, lo que facilita su uso y modificación.  
- **EN:** **Modular Implementation**: Each connection method is implemented as an independent module, making it easy to use and modify.

---

## Requisitos / Requirements

- **ES:**  
  - Godot Engine 4.4 o superior.  
  - Conexión a Internet y/o localhost, IPv4/6.  
  - Dos dispositivos compatibles con Godot (ordenadores, smartphones, etc.).  

- **EN:**  
  - Godot Engine 4.4 or higher.  
  - Internet connection and/or localhost, IPv4/6.  
  - Two devices compatible with Godot (computers, smartphones, etc.).

---

## Métodos de Conexión / Connection Methods

### ENet
- **ES:** ENet es una biblioteca confiable para comunicación en tiempo real, ideal para baja latencia y alta fiabilidad.  
- **EN:** ENet is a reliable networking library for real-time communication, ideal for low latency and high reliability.  

Usos:  
- **ES:** Juegos en línea, chats en tiempo real, transferencia de archivos pequeños en redes locales.  
- **EN:** Online games, real-time chats, small file transfers in local networks.

---

### WebSocket y WebRTC / WebSocket and WebRTC
- **ES:** WebSocket proporciona comunicación bidireccional sobre una sola conexión TCP, ideal para aplicaciones web interactivas.  
- **EN:** WebSocket provides bidirectional communication over a single TCP connection, ideal for interactive web apps.  

Usos:  
- **ES:** Chats en línea, colaboración en tiempo real, juegos multijugador en navegador, aplicaciones IoT.  
- **EN:** Online chats, real-time collaboration, browser-based multiplayer games, IoT applications.

---

### TCP y UDP / TCP and UDP
- **ES:** TCP_Peer utiliza el protocolo TCP estándar para comunicación confiable; UDP ofrece baja latencia.  
- **EN:** TCP_Peer uses the standard TCP protocol for reliable communication; UDP offers low latency.  

Usos:  
- **ES:** Transferencia de archivos, administración remota, comunicación entre sistemas distribuidos.  
- **EN:** File transfer, remote administration, communication between distributed systems.

---

## Usos Útiles / Useful Use Cases

1. **ES:** Juegos multijugador en tiempo real.  
   **EN:** Real-time multiplayer games.  
2. **ES:** Aplicaciones de chat instantáneo.  
   **EN:** Instant chat applications.  
3. **ES:** Colaboración en tiempo real (texto, dibujo, etc.).  
   **EN:** Real-time collaboration (text, drawing, etc.).  
4. **ES:** Intercambio de archivos confiable.  
   **EN:** Reliable file exchange.  
5. **ES:** Herramientas de control remoto y administración de sistemas.  
   **EN:** Remote control and system administration tools.

---

## Contribuir / Contributing

- **ES:** ¡Las contribuciones son bienvenidas! Haz un fork del repositorio, crea una rama con tus cambios y envía un pull request.  
- **EN:** Contributions are welcome! Fork the repository, create a branch with your changes, and submit a pull request.

---

## Licencia / License

- **ES:** Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.  
- **EN:** This project is licensed under the MIT License. See the `LICENSE` file for details.
