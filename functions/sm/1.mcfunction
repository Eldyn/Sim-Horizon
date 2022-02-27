scoreboard players random @s smr_1 1 100
scoreboard players random @s smr_2 1 100
scoreboard players random @s smr_3 1 100
execute @s[scores={smr_1=1..3}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 tnt
execute @s[scores={smr_1=4}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 nether_wart_block
execute @s[scores={smr_1=5}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 gold_block
execute @s[scores={smr_1=6..62}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 coal_block
execute @s[scores={smr_1=63..69}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 waxed_oxidized_cut_copper
execute @s[scores={smr_1=70..71}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 blue_ice
execute @s[scores={smr_1=72..87}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 diamond_block
execute @s[scores={smr_1=88..92}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 emerald_block
execute @s[scores={smr_1=93..100}] ~ ~ ~ fill 1077 1 1018 1079 5 1018 target
particle minecraft:critical_hit_emitter 1078 5.2 1019
particle minecraft:critical_hit_emitter 1078 2.8 1019
execute @p 1082 1 1027 execute @a[r=10] ~ ~ ~ playsound note.pling @s ~ ~ ~ 1 0.6 1