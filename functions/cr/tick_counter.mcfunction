scoreboard players reset @s vars
execute @e[dx=56,dy=20,dz=47,type=cr:tower] ~-16 ~-5 ~-23 scoreboard players add @e[type=cr:cmd,c=1,name=cr_counter] vars 1
execute @s[scores={vars=..1,timer=!..0}] ~ ~ ~ execute @e[dx=56,dy=20,dz=47,type=cr:tower,family=b_tow] ~-16 ~-5 ~-23 execute @e[type=cr:cmd,c=1,name=cr_counter] ~~~ function cr/blue_wins
execute @s[scores={vars=..1,timer=!..0}] ~ ~ ~ execute @e[dx=56,dy=20,dz=47,type=cr:tower,family=r_tow] ~-39 ~-5 ~-23 execute @e[type=cr:cmd,c=1,name=cr_counter] ~~~ function cr/red_wins
execute @s[scores={timer=-5..}] ~~~ scoreboard players remove @s timer 1
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] seconds 59
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] minutes 2
scoreboard players remove @s seconds 1
scoreboard players remove @s[scores={seconds=0}] minutes 1
scoreboard players set @s[scores={seconds=0}] seconds 59
execute @s[scores={timer=120}] ~~~ function cr/sudden_death
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] minutes 1
execute @e[dx=56,dy=20,dz=47,type=cr:tower] ~-16 ~-5 ~-23 scoreboard players add @e[type=cr:cmd,r=2,c=1,name=cr_counter] temp 1
execute @s[scores={timer=-5}] ~~~ function cr/end_game