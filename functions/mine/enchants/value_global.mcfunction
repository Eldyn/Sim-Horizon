scoreboard players set @s[tag=mine_overclock] mine_value 0
effect @s[tag=mine_overclock1] mining_fatigue 5 5 true
effect @s[tag=mine_overclock] mining_fatigue 3 5 true

scoreboard players remove @s[tag=mine_berserk] mine_value 1
execute as @s[tag=mine_berserk,scores={mine_value=..0}] at @s run function mine/break_pickaxe