scoreboard players operation @s mine_damage = @s mine_durability
particle minecraft:knockback_roar_particle ~~~
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.relife.success"}]}
tag @s remove mine_relife