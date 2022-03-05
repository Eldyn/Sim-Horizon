




#max soldi
scoreboard players operation @s temp = @s mine_sat_m
scoreboard players operation @s temp -= @s bal_mine
scoreboard players operation @s[scores={temp=..-1}] bal_mine = @s mine_sat_m
#enchant
execute @s[tag=mine_sat_mgreed,scores={temp=..0}] ~ ~ ~ function  mine/satchel/enchants/money_greed
#
tellraw @s[scores={temp=..-1}] {"rawtext":[{"translate":"overflow"}]}

#enchants

execute @s[tag=mine_sat_fortuna,scores={bal_mine=100..}] ~ ~ ~ function mine/satchel/enchants/fortuna
execute @s[tag=mine_sat_devorer,scores={bal_mine=100..}] ~ ~ ~ function mine/satchel/enchants/devorer
execute @s[tag=mine_sat_explosion,scores={bal_mine=100..}] ~ ~ ~ function mine/satchel/enchants/explosion
execute @s[tag=mine_sat_solo,scores={bal_mine=100..}] ~ ~ ~ function mine/satchel/enchants/solo_leveling


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