playsound random.break @s
replaceitem entity @s slot.weapon.mainhand 0 air
scoreboard players set @s i_mine_pickaxe -2000
scoreboard players set @s[tag=!mine_relife] mine_damage -200
execute @s[tag=mine_atropos] ~ ~ ~ function mine/enchants/atropos
execute @s[tag=mine_relife] ~ ~ ~ function mine/enchants/relife
tag @s[tag=!mine_relife] remove mine_memento_mori
tag @s[tag=!mine_relife] remove mine_recollection
tag @s[tag=!mine_relife] remove mine_overclock
tag @s[tag=!mine_relife] remove mine_rewind
tag @s remove mine_relife
tag @s[tag=!mine_relife] remove mine_atropos