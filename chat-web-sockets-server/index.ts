import { Server } from 'socket.io';

const chatWebSocketsServer = new Server();

chatWebSocketsServer.on('connection', (socket) => {
  console.log('New connection with socket id' + socket.id);
});

chatWebSocketsServer.listen(3001);

console.log('Chat app Web Sockets server started on port 3001...');