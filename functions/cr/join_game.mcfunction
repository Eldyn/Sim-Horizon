tag @a[dy=6,c=1,tag=!cr_blue] add cr_red
tag @a[dy=6,c=1,tag=!cr_red] add cr_blue
tag @a[dy=6] add cr_player
tag @a[dy=6] add cr_joining
say @a[tag=cr_joining]
tag @a[dy=4] remove searching
effect @a[dy=4] levitation 3 3 true
ability @a[dy=4] mayfly true
execute as @e[type=cr:cmd,name=cr_generator] positioned ~16 ~18 ~24 run tp @a[tag=cr_joining,tag=cr_blue] ~ ~3 ~
execute as @e[type=cr:cmd,name=cr_generator] positioned ~16 ~18 ~24 run tp @a[tag=cr_joining,tag=cr_red] ~23 ~3 ~
tag @a remove cr_joining