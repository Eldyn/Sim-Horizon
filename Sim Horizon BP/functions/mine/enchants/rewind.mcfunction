scoreboard players operation @s mine_damage = @s mine_durability
particle minecraft:knockback_roar_particle ~~~
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.rewind.success"}]}
tag @s remove mine_rewind
playsound portal.travel @s