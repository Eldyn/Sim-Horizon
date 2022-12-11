execute as @s[scores={smr_2=1..3}] at @s run fill 1081 1 1018 1083 5 1018 tnt
execute as @s[scores={smr_2=4}] at @s run fill 1081 1 1018 1083 5 1018 nether_wart_block
execute as @s[scores={smr_2=5}] at @s run fill 1081 1 1018 1083 5 1018 gold_block
execute as @s[scores={smr_2=6..62}] at @s run fill 1081 1 1018 1083 5 1018 coal_block
execute as @s[scores={smr_2=63..69}] at @s run fill 1081 1 1018 1083 5 1018 waxed_oxidized_cut_copper
execute as @s[scores={smr_2=70..71}] at @s run fill 1081 1 1018 1083 5 1018 blue_ice
execute as @s[scores={smr_2=72..87}] at @s run fill 1081 1 1018 1083 5 1018 diamond_block
execute as @s[scores={smr_2=88..92}] at @s run fill 1081 1 1018 1083 5 1018 emerald_block
execute as @s[scores={smr_2=93..100}] at @s run fill 1081 1 1018 1083 5 1018 target
particle minecraft:critical_hit_emitter 1082 5.2 1019
particle minecraft:critical_hit_emitter 1082 2.8 1019
execute as @p positioned 1082 1 1027 run execute as @a[r=10] at @s run playsound note.pling @s ~ ~ ~ 1 0.8 1