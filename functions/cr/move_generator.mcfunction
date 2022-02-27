tickingarea add ~ ~ ~50 ~ ~ ~50
execute @e[name=cr_counter,type=cr:cmd,c=1] ~~~ tp @e[type=cr:cmd,name=cr_generator] ~ ~ ~50
tickingarea remove ~ ~ ~-50
setblock ~ ~ ~-50 wool 14
setblock ~ ~ ~ wool
execute @e[type=cr:cmd,name=cr_counter,r=2,c=1] ~ ~ ~ execute @e[type=cr:cmd,name=cr_generator] ~ ~ ~ function cr/move_generator