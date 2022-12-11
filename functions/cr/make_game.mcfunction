kill @e[type=cr:cmd,name=cr_empty,c=1,r=1]
structure load cr:arena1 ~ ~ ~
summon cr:tower ~ ~ ~ blue_tow
summon cr:tower ~ ~ ~ red_tow
execute as @p positioned 1999 190 2013 run function cr/join_game
summon cr:cmd "cr_counter"
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=1] timer 300
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=1] seconds 59
scoreboard players set @e[type=cr:cmd,name=cr_counter,r=1] minutes 2
tp @e[type=cr:tower,family=b_tow,c=1] ~16 ~5 ~23
tp @e[type=cr:tower,family=r_tow,c=1] ~39 ~5 ~23
scoreboard players set @s temp 0
execute as @e[type=cr:cmd,name=cr_empty,c=1] at @s run scoreboard players set @e[type=cr:cmd,name=cr_generator] temp 1
execute as @s[scores={temp=0}] at @s run function cr/move_generator
tp @s @e[type=cr:cmd,name=cr_empty,c=1]