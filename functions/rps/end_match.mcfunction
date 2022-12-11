kill @e[type=item,r=1]
scoreboard players operation @s rps_points = @p[tag=rps_p1] rps_points
scoreboard players operation @s rps_points -= @p[tag=rps_p2] rps_points
execute as @s[scores={rps_points=0}] at @s run function rps/results/tie
execute as @s[scores={rps_points=..-1}] at @s run function rps/results/p2_win
execute as @s[scores={rps_points=1..}] at @s run function rps/results/p1_win
tp @a[tag=rps_player] 1082 0 1064
tag @a remove rps_p1
tag @a remove rps_p2
tag @a remove rps_player
scoreboard players reset @a rps_points
scoreboard players reset @s rps_points
scoreboard players reset @s rps_card
scoreboard players reset @s rps_round
scoreboard players reset @s rps_timer
scoreboard players set rps_playing vars 0
setblock 1087 -14 1064 air