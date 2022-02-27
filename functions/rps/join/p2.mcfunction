scoreboard players add rps_playing vars 1
tag @s add rps_p2
tag @s add rps_player
scoreboard players set @a[tag=rps_player] rps_points 0
scoreboard players set @e[type=armor_stand,name=rps_main] rps_round 0
scoreboard players set @e[type=armor_stand,name=rps_main] rps_timer 12
tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§c"},{"selector":"@a[tag=rps_p1]"},{"text":" §f§lVs.§b "},{"selector":"@a[tag=rps_p2]"},{"text":".\n§l- §gChe il gioco abbia inizio!§f§l -"}]}
setblock 1087 -14 1064 stone