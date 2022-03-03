particle minecraft:knockback_roar_particle ~~~
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.berserker.l1.success"}]}
scoreboard players set @s mine_value 15
tag @s add mine_berserk