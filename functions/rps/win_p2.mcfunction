tellraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] {"rawtext":[{"text":"§f§l- §r§fIl Vincitore di questo turno è:§b "},{"selector":"@p[tag=rps_p2]"},{"text":"§l!§f§l -§r"}]}
scoreboard players add @p[tag=rps_p2] rps_points 1
execute as @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] at @s run playsound note.pling @s ~~~ 1 1.5 1