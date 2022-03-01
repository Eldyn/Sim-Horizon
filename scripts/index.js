import * as Minecraft from "mojang-minecraft";  
import server from "./server.js";
server.start();

server.ev.playerJoin.subscribe('myID', (player) => {
  player.runCommand('say fai funzione on join')
})
