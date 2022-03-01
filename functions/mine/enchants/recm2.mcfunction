fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cr:mattoni 0 replace cr:l1
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cr:mattoni 0 replace cr:l2
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cr:mattoni 0 replace cr:l3
particle minecraft:knockback_roar_particle ~~~
playsound mob.zombie.wood @a[r=6] ~~~ 1 1 1
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.recm.l2.success"}]}