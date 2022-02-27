fill ~ ~ ~ ~56 ~10 ~47 air
fill ~ ~11 ~ ~56 ~21 ~47 air
fill ~ ~22 ~ ~56 ~32 ~47 air
fill ~ ~33 ~ ~56 ~43 ~47 air
fill ~ ~44 ~ ~56 ~48 ~47 air
kill @e[dx=56,dy=20,dz=47,type=cr:tower]
kill @e[dx=56,dy=20,dz=47,family=troop]
tag @a[dx=56,dy=20,dz=47] remove cr_player
tag @a[dx=56,dy=20,dz=47] remove cr_red
tag @a[dx=56,dy=20,dz=47] remove cr_blue
ability @a[dx=56,dy=20,dz=47] mayfly false
tp @a[dx=56,dy=20,dz=47] -79 20 -57
scoreboard players set @s timer -6
summon cr:cmd "cr_empty"
kill