scoreboard players reset @s vars
execute as @e[dx=56,dy=20,dz=47,type=cr:tower] positioned ~-16 ~-5 ~-23 run scoreboard players add @e[type=cr:cmd,c=1,name=cr_counter] vars 1
execute as @s[scores={vars=..1,timer=!..0}] at @s run execute as @e[dx=56,dy=20,dz=47,type=cr:tower,family=b_tow] positioned ~-16 ~-5 ~-23 run execute as @e[type=cr:cmd,c=1,name=cr_counter] at @s run function cr/blue_wins
execute as @s[scores={vars=..1,timer=!..0}] at @s run execute as @e[dx=56,dy=20,dz=47,type=cr:tower,family=r_tow] positioned ~-39 ~-5 ~-23 run execute as @e[type=cr:cmd,c=1,name=cr_counter] at @s run function cr/red_wins
execute as @s[scores={timer=-5..}] at @s run scoreboard players remove @s timer 1
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] seconds 59
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] minutes 2
scoreboard players remove @s seconds 1
scoreboard players remove @s[scores={seconds=0}] minutes 1
scoreboard players set @s[scores={seconds=0}] seconds 59
execute as @s[scores={timer=120}] at @s run function cr/sudden_death
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=0] minutes 1
execute as @e[dx=56,dy=20,dz=47,type=cr:tower] positioned ~-16 ~-5 ~-23 run scoreboard players add @e[type=cr:cmd,r=2,c=1,name=cr_counter] temp 1
execute as @s[scores={timer=-5}] at @s run function cr/end_game