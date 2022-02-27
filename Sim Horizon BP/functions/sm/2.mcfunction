execute @s[scores={smr_2=1..3}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 tnt
execute @s[scores={smr_2=4}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 nether_wart_block
execute @s[scores={smr_2=5}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 gold_block
execute @s[scores={smr_2=6..62}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 coal_block
execute @s[scores={smr_2=63..69}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 waxed_oxidized_cut_copper
execute @s[scores={smr_2=70..71}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 blue_ice
execute @s[scores={smr_2=72..87}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 diamond_block
execute @s[scores={smr_2=88..92}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 emerald_block
execute @s[scores={smr_2=93..100}] ~ ~ ~ fill 1081 1 1018 1083 5 1018 target
particle minecraft:critical_hit_emitter 1082 5.2 1019
particle minecraft:critical_hit_emitter 1082 2.8 1019
execute @p 1082 1 1027 execute @a[r=10] ~ ~ ~ playsound note.pling @s ~ ~ ~ 1 0.8 1