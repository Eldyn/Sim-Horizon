execute @a[tag=explosion_player] ~~~ function mine/enchants/area_destroy_summon
execute @a[tag=explosion_player2] ~~~ function mine/enchants/area_destroy_summon2
execute @e[type=cr:mine_explosion] ~~~ function mine/enchants/area_destroy_detect
tp @e[type=cr:mine_explosion,scores={explosion_data=0}] 0 -100 0
execute @e[type=cr:mine_explosion,scores={explosion_data=1..}] ~~~ setblock ~~~ air 0 destroy
execute @e[type=cr:mine_explosion,scores={explosion_data=11..12}] ~~~ scoreboard players set @s bal 1
execute @e[type=cr:mine_explosion,scores={explosion_data=11..12}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=13..14}] ~~~ scoreboard players set @s bal 2
execute @e[type=cr:mine_explosion,scores={explosion_data=13..14}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=15..16}] ~~~ scoreboard players set @s bal 3
execute @e[type=cr:mine_explosion,scores={explosion_data=15..16}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=17..18}] ~~~ scoreboard players set @s bal 4
execute @e[type=cr:mine_explosion,scores={explosion_data=17..18}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=19}] ~~~ scoreboard players set @s bal 5
execute @e[type=cr:mine_explosion,scores={explosion_data=19}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=20}] ~~~ scoreboard players set @s bal 8
execute @e[type=cr:mine_explosion,scores={explosion_data=20}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=21}] ~~~ scoreboard players set @s bal 10
execute @e[type=cr:mine_explosion,scores={explosion_data=21}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
execute @e[type=cr:mine_explosion,scores={explosion_data=22}] ~~~ scoreboard players set @s bal 13
execute @e[type=cr:mine_explosion,scores={explosion_data=22}] ~~~ scoreboard players operation @p[tag=explosion_player] bal_mine += @s bal
scoreboard players add mined vars 125
tp @e[type=cr:mine_explosion] 0 -100 0
particle minecraft:knockback_roar_particle ~~~
playsound cauldron.explode @a[r=6] ~~~ 1 1 1
playsound block.end_portal_frame.fill @a[r=6] ~~~ 1 1 1
titleraw @a[tag=explosion_player] title {"rawtext":[{"text":"DEF"},{"translate":"enchant.explode.l1.success"}]}
titleraw @a[tag=explosion_player2] title {"rawtext":[{"text":"DEF"},{"translate":"enchant.explode.l2.success"}]}
tag @a[tag=explosion_player] remove explosion_player
tag @a[tag=explosion_player2] remove explosion_player2