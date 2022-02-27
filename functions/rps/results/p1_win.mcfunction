scoreboard players operation @a[tag=rps_p1] "$R" += rps_totalbet vars
titleraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] title {"rawtext":[{"text":"TITLE §c"},{"selector":"@p[tag=rps_p1]"},{"text":" §fHa vinto la partita§l!§r"}]}
titleraw @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] subtitle {"rawtext":[{"text":"TITLE §fRisultato: §f(§c"},{"score":{"name":"@p[tag=rps_p1]","objective":"rps_points"}},{ "text":"§f§l-§r§b"},{"score":{"name":"@p[tag=rps_p2]","objective":"rps_points"}},{"text":"§r§f)"}]}
execute @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] ~~~ playsound random.levelup @s ~~~ 1 0.5 1