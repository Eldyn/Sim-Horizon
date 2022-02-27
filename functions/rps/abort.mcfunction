tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§f§l-§r§fQuesta partita è stata annullata§l!§f -§r"}]}
tp @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] 1082 0 1063 0 0
kill @e[type=item,r=2]
clear @a sp:rps_rock
clear @a sp:rps_scissors
clear @a sp:rps_paper
tag @a remove rps_p1
tag @a remove rps_p2
tag @a remove rps_player
fill 1082 -14 1065 1082 -14 1066 wool
scoreboard players set rps_playing vars 0
scoreboard players reset @s rps_timer
scoreboard players reset @s rps_round
setblock 1087 -14 1064 air