




#percentuale soldi
scoreboard players operation @s temp = @s bal_mine
scoreboard players operation @s temp *= a100 vars
scoreboard players operation @s temp /= @s mine_sat_m

#max
scoreboard players operation @s[scores={temp=100..}] bal_mine = @s mine_sat_m
tellraw @s[scores={temp=100..}] {"rawtext":[{"translate":"overflow"}]}

#enchants
execute @s[tag=mine_sat_fortuna,scores={temp=100..}] ~ ~ ~ function mine/satchel/enchants/fortuna
execute @s[tag=mine_sat_devorer,scores={temp=100..}] ~ ~ ~ function mine/satchel/enchants/devorer
execute @s[tag=mine_sat_explosion,scores={temp=100..}] ~ ~ ~ function mine/satchel/enchants/explosion
execute @s[tag=mine_sat_solo,scores={temp=100..}] ~ ~ ~ function mine/satchel/enchants/solo_leveling


#scala livello
scoreboard players operation @s mine_sat_xp += @s bal_mine
#max livello
scoreboard players operation @s temp = @s mine_sat_xpm
scoreboard players operation @s temp -= @s mine_sat_xp
execute @s[scores={temp=..0}] ~ ~ ~ function mine/satchel/levelup

#default reset soldi
scoreboard players operation @s bal_mine /= a2 vars
scoreboard players operation @s bal += @s bal_mine
scoreboard players set @s bal_mine 0