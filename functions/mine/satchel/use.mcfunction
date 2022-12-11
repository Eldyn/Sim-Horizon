
#percentuale soldi
scoreboard players operation @s temp = @s bal_mine
scoreboard players operation @s temp *= a100 vars
scoreboard players operation @s temp /= @s mine_sat_m

#max
scoreboard players operation @s[scores={temp=100..}] bal_mine = @s mine_sat_m
#enchants
execute as @s[tag=mine_sat_fortuna,scores={temp=75..,mine_sat_lvl=15..}] at @s run function mine/satchel/enchants/fortuna
execute as @s[tag=mine_sat_devorer,scores={temp=100..,mine_sat_lvl=20..}] at @s run function mine/satchel/enchants/devorer


#scala livello
scoreboard players operation @s mine_sat_xp += @s bal_mine
#max livello
scoreboard players operation @s temp = @s mine_sat_xpm
scoreboard players operation @s temp -= @s mine_sat_xp
execute as @s[scores={temp=..0}] at @s run function mine/satchel/levelup

#default reset soldi
scoreboard players operation @s bal_mine /= a2 vars
scoreboard players operation @s bal += @s bal_mine
scoreboard players set @s bal_mine 0