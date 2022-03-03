playsound random.break @s
replaceitem entity @s slot.weapon.mainhand 0 air
scoreboard players set @s i_mine_pickaxe -2000
scoreboard players set @s mine_damage -200
tag @s remove berserk
execute @s[tag=mine_berserker] ~ ~ ~ function mine/enchants/berserker
execute @s[tag=mine_atropos] ~ ~ ~ function mine/enchants/atropos
tag @s remove mine_memento_mori
tag @s remove mine_recollection
tag @s remove mine_overclock
tag @s remove mine_rewind
tag @s remove mine_atropos
tag @s remove mine_berserker