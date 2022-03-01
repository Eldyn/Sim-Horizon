scoreboard players add rps_playing vars 1
tag @s add rps_p1
tag @s add rps_player
scoreboard players set @e[type=armor_stand,name=rps_main] rps_round -1
clone 1085 -14 1068 1086 -13 1068 1085 -14 1064
tellraw @a[r=40] {"rawtext":[{"text":"§l-§r §gUn giocatore ha dato inizio a una partita di Sasso Carta Forbici§f§l -"}]}
scoreboard players set @e[type=armor_stand,name=rps_main] rps_timer 9010