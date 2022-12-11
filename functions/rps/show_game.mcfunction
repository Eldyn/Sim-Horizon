scoreboard players set @a[tag=rps_player,scores={rps_card=!1..3}] rps_card 4
execute as @p[tag=rps_p1,scores={rps_card=1}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§c"},{"selector":"@p[tag=rps_p1]"},{"text":"§f Ha giocato -§bSasso§f-"}]}
execute as @p[tag=rps_p1,scores={rps_card=2}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§c"},{"selector":"@p[tag=rps_p1]"},{"text":"§f Ha giocato -§bCarta§f-"}]}
execute as @p[tag=rps_p1,scores={rps_card=3}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§c"},{"selector":"@p[tag=rps_p1]"},{"text":"§f Ha giocato -§bForbici§f-"}]}
execute as @p[tag=rps_p1,scores={rps_card=4}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§c"},{"selector":"@p[tag=rps_p1]"},{"text":"§f Non ha giocato nessuna carta!"}]}
execute as @p[tag=rps_p2,scores={rps_card=1}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§b"},{"selector":"@p[tag=rps_p2]"},{"text":"§f Ha giocato -§bSasso§f-"}]}
execute as @p[tag=rps_p2,scores={rps_card=2}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§b"},{"selector":"@p[tag=rps_p2]"},{"text":"§f Ha giocato -§bCarta§f-"}]}
execute as @p[tag=rps_p2,scores={rps_card=3}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§b"},{"selector":"@p[tag=rps_p2]"},{"text":"§f Ha giocato -§bForbici§f-"}]}
execute as @p[tag=rps_p2,scores={rps_card=4}] at @s run tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§b"},{"selector":"@p[tag=rps_p2]"},{"text":"§f Non ha giocato nessuna carta!"}]}
fill 1082 -14 1065 1082 -14 1066 redstone_block
scoreboard players remove @e[type=armor_stand,name=rps_main] rps_timer 1