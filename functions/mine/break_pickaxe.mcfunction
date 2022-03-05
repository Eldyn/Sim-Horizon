playsound random.break @s
clear
give @s cr:traveler
give @s[scores={i_mine_satchel=0}] cr:mine_satchel
scoreboard players set @s i_mine_pickaxe -2000
scoreboard players set @s mine_damage -200
#berserker satchel
tag @s[tag=!mine_berserk,tag=mine_sat_berserker] add mine_berserker
#
tag @s remove mine_berserk
execute @s[tag=mine_berserker] ~ ~ ~ function mine/enchants/berserker
execute @s[tag=mine_atropos] ~ ~ ~ function mine/enchants/atropos
tag @s remove mine_memento_mori
tag @s remove mine_recollection
tag @s remove mine_overclock
tag @s remove mine_rewind
tag @s remove mine_atropos
tag @s remove mine_berserker
