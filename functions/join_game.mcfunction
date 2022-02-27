tag @a[dy=4,c=1] add cr_red
tag @a[dy=4,c=1,tag=!cr_red] add cr_blue
tag @a[dy=4] add cr_player
tag @a[dy=4] add cr_joining
tag @a[dy=4] remove searching
execute @e[type=armor_stand,tag=arena_generator] ~16 ~18 ~-24 tp @a[tag=cr_joining,tag=cr_blue] ~ ~ ~
execute @e[type=armor_stand,tag=arena_generator] ~16 ~18 ~-24 tp @a[tag=cr_joining,tag=cr_red] ~23 ~ ~