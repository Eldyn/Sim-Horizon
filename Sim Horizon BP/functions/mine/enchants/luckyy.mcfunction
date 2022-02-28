fill ~-3 ~-3 ~-3 ~3 ~3 ~3 cr:luckyhblock 0 replace cr:mine_l1_rare
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 cr:luckyhblock 0 replace cr:mine_l2_rare
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 cr:luckyhblock 0 replace cr:mine_l3_rare
particle minecraft:knockback_roar_particle ~~~
playsound random.levelup @a[r=6] ~~~ 1 1 1
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.luckyy.success"}]}