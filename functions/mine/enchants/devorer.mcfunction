fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:l1
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:l2
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:l3
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l1_com1
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l1_com2
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l1_rare
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l2_com1
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l2_com2
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l2_rare
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l3_com1
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l3_com2
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l3_rare
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l4_com1
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mine_l4_com2
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:mattoni
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:oro
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:roccia
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air 0 replace cr:luckyhblock
particle minecraft:knockback_roar_particle ~~~
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @s title {"rawtext":[{"text":"DEF"},{"translate":"enchant.devorer.l1.success"}]}
scoreboard players add @s bal_mine 200
scoreboard players add mined vars 230