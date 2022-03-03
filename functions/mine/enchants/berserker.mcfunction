particle minecraft:knockback_roar_particle ~~~
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.berserker.l1.success"}]}
scoreboard players set @s mine_value 20
tag @s add mine_berserk
give @s cr:pickaxe_c_berserker 1 0 {"item_lock":{"mode":"lock_in_inventory"},"can_destroy":{"blocks":["cr:l1","cr:l2","cr:l3","cr:l4","cr:l5","cr:luckyhblock","cr:mine_l1_com1","cr:mine_l1_com2","cr:mine_l1_rare","cr:mine_l2_com1","cr:mine_l2_com2","cr:mine_l2_rare","cr:mine_l3_com1","cr:mine_l3_com2","cr:mine_l3_rare","cr:mine_l4_com1","cr:mine_l4_com2","cr:mine_l4_rare","cr:mattoni","cr:oro","cr:roccia"]}}