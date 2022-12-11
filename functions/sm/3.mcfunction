execute as @s[scores={smr_3=1..3}] at @s run fill 1085 1 1018 1087 5 1018 tnt
execute as @s[scores={smr_3=4}] at @s run fill 1085 1 1018 1087 5 1018 nether_wart_block
execute as @s[scores={smr_3=5}] at @s run fill 1085 1 1018 1087 5 1018 gold_block
execute as @s[scores={smr_3=6..62}] at @s run fill 1085 1 1018 1087 5 1018 coal_block
execute as @s[scores={smr_3=63..69}] at @s run fill 1085 1 1018 1087 5 1018 waxed_oxidized_cut_copper
execute as @s[scores={smr_3=70..71}] at @s run fill 1085 1 1018 1087 5 1018 blue_ice
execute as @s[scores={smr_3=72..87}] at @s run fill 1085 1 1018 1087 5 1018 diamond_block
execute as @s[scores={smr_3=88..92}] at @s run fill 1085 1 1018 1087 5 1018 emerald_block
execute as @s[scores={smr_3=93..100}] at @s run fill 1085 1 1018 1087 5 1018 target
particle minecraft:critical_hit_emitter 1086 5.2 1019
particle minecraft:critical_hit_emitter 1086 2.8 1019
execute as @p positioned 1082 1 1027 run execute as @a[r=10] at @s run playsound note.pling @s ~ ~ ~ 1 1.1 1