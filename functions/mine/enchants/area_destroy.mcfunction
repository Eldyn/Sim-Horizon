execute as @a[tag=explosion_player] at @s run function mine/enchants/area_destroy_summon
execute as @a[tag=explosion_player2] at @s run function mine/enchants/area_destroy_summon2
execute as @e[type=cr:mine_explosion] at @s run function mine/enchants/area_destroy_detect
tp @e[type=cr:mine_explosion,scores={explosion_data=0}] 0 -100 0
execute as @e[type=cr:mine_explosion,scores={explosion_data=1..}] at @s run setblock ~~~ air 0 destroy
execute as @e[type=cr:mine_explosion,scores={explosion_data=11..12}] at @s run scoreboard players set @s bal 1
execute as @e[type=cr:mine_explosion,scores={explosion_data=11..12}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=13..14}] at @s run scoreboard players set @s bal 2
execute as @e[type=cr:mine_explosion,scores={explosion_data=13..14}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=15..16}] at @s run scoreboard players set @s bal 3
execute as @e[type=cr:mine_explosion,scores={explosion_data=15..16}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=17..18}] at @s run scoreboard players set @s bal 4
execute as @e[type=cr:mine_explosion,scores={explosion_data=17..18}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=19}] at @s run scoreboard players set @s bal 5
execute as @e[type=cr:mine_explosion,scores={explosion_data=19}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=20}] at @s run scoreboard players set @s bal 8
execute as @e[type=cr:mine_explosion,scores={explosion_data=20}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=21}] at @s run scoreboard players set @s bal 10
execute as @e[type=cr:mine_explosion,scores={explosion_data=21}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute as @e[type=cr:mine_explosion,scores={explosion_data=22}] at @s run scoreboard players set @s bal 13
execute as @e[type=cr:mine_explosion,scores={explosion_data=22}] at @s run scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
scoreboard players add mined vars 125
tp @e[type=cr:mine_explosion] 0 -100 0
particle minecraft:knockback_roar_particle ~~~
playsound cauldron.explode @a[r=6] ~~~ 1 1 1
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @a[tag=explosion_player] title {"rawtext":[{"text":"DEF"},{"translate":"enchant.explode.l1.success"}]}
titleraw @a[tag=explosion_player2] title {"rawtext":[{"text":"DEF"},{"translate":"enchant.explode.l2.success"}]}
tag @a[tag=explosion_player] remove explosion_player
tag @a[tag=explosion_player2] remove explosion_player2