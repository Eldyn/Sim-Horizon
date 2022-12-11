execute as @p[tag=rps_p1,scores={rps_card=1}] at @s run execute as @p[tag=rps_p2,scores={rps_card=1}] at @s run function rps/tie
execute as @p[tag=rps_p1,scores={rps_card=2}] at @s run execute as @p[tag=rps_p2,scores={rps_card=2}] at @s run function rps/tie
execute as @p[tag=rps_p1,scores={rps_card=3}] at @s run execute as @p[tag=rps_p2,scores={rps_card=3}] at @s run function rps/tie
execute as @p[tag=rps_p1,scores={rps_card=1}] at @s run execute as @p[tag=rps_p2,scores={rps_card=2}] at @s run function rps/win_p2
execute as @p[tag=rps_p1,scores={rps_card=1}] at @s run execute as @p[tag=rps_p2,scores={rps_card=3}] at @s run function rps/win_p1
execute as @p[tag=rps_p1,scores={rps_card=2}] at @s run execute as @p[tag=rps_p2,scores={rps_card=1}] at @s run function rps/win_p1
execute as @p[tag=rps_p1,scores={rps_card=2}] at @s run execute as @p[tag=rps_p2,scores={rps_card=3}] at @s run function rps/win_p2
execute as @p[tag=rps_p1,scores={rps_card=3}] at @s run execute as @p[tag=rps_p2,scores={rps_card=1}] at @s run function rps/win_p2
execute as @p[tag=rps_p1,scores={rps_card=3}] at @s run execute as @p[tag=rps_p2,scores={rps_card=2}] at @s run function rps/win_p1
execute as @p[tag=rps_p1,scores={rps_card=4}] at @s run execute as @p[tag=rps_p2,scores={rps_card=!4}] at @s run function rps/win_p2
execute as @p[tag=rps_p1,scores={rps_card=!4}] at @s run execute as @p[tag=rps_p2,scores={rps_card=4}] at @s run function rps/win_p1
tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"Le carte che sono state pescate sono: "},{"score":{"objective":"vars","name":"rps_c_rock"}},{"text":" §bSasso§r, "},{"score":{"objective":"vars","name":"rps_c_paper"}},{"text":" §bCarta§f, "},{"score":{"objective":"vars","name":"rps_c_scissors"}},{"text":" §bForbici§f."}]}
fill 1082 -14 1065 1082 -14 1066 wool
scoreboard players set @a[tag=rps_player] rps_card 4
scoreboard players remove @e[type=armor_stand,name=rps_main] rps_timer 1
setblock 1087 -14 1064 stone
scoreboard players add @e[type=armor_stand,name=rps_main] rps_round 1
execute as @e[type=armor_stand,name=rps_main,scores={rps_round=3}] at @s run function rps/end_match