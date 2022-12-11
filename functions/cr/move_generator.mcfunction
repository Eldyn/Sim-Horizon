tickingarea add ~ ~ ~50 ~ ~ ~50
execute as @e[name=cr_counter,type=cr:cmd,c=1] at @s run tp @e[type=cr:cmd,name=cr_generator] ~ ~ ~50
tickingarea remove ~ ~ ~-50
setblock ~ ~ ~-50 wool 14
setblock ~ ~ ~ wool
execute as @e[type=cr:cmd,name=cr_counter,r=2,c=1] at @s run execute as @e[type=cr:cmd,name=cr_generator] at @s run function cr/move_generator