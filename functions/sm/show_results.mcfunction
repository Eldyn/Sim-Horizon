execute as @s[scores={smr_1=63..69}] at @s run execute as @s[scores={smr_2=63..69}] at @s run execute as @s[scores={smr_3=63..69}] at @s run function sm/final_result/win_copper
execute as @s[scores={smr_1=72..87}] at @s run execute as @s[scores={smr_2=72..87}] at @s run execute as @s[scores={smr_3=72..87}] at @s run function sm/final_result/win_rare
execute as @s[scores={smr_1=72..87}] at @s run execute as @s[scores={smr_2=72..87}] at @s run execute as @s[scores={smr_3=88..92}] at @s run function sm/final_result/win_rare
execute as @s[scores={smr_1=88..92}] at @s run execute as @s[scores={smr_2=72..87}] at @s run execute as @s[scores={smr_3=72..87}] at @s run function sm/final_result/win_rare
execute as @s[scores={smr_1=88..92}] at @s run execute as @s[scores={smr_2=88..92}] at @s run execute as @s[scores={smr_3=88..92}] at @s run function sm/final_result/win_epic
execute as @s[scores={smr_1=93..100}] at @s run execute as @s[scores={smr_2=93..100}] at @s run execute as @s[scores={smr_3=93..100}] at @s run function sm/final_result/hyper_roll
execute as @s[scores={smr_1=1..3}] at @s run execute as @s[scores={smr_2=1..3}] at @s run execute as @s[scores={smr_3=1..3}] at @s run function sm/final_result/delete_prize
execute as @s[scores={smr_1=72..87}] at @s run execute as @s[scores={smr_2=88..92}] at @s run execute as @s[scores={smr_3=88..92}] at @s run function sm/final_result/win_rarer
execute as @s[scores={smr_1=88..92}] at @s run execute as @s[scores={smr_2=88..92}] at @s run execute as @s[scores={smr_3=72..87}] at @s run function sm/final_result/win_rarer
execute as @s[scores={smr_1=6..62}] at @s run function sm/result/lose
execute as @s[scores={smr_2=6..62}] at @s run function sm/result/lose
execute as @s[scores={smr_3=6..62}] at @s run function sm/result/lose
execute as @s[scores={smr_1=4}] at @s run function sm/result/half_prize
execute as @s[scores={smr_2=4}] at @s run function sm/result/half_prize
execute as @s[scores={smr_3=4}] at @s run function sm/result/half_prize
execute as @s[scores={smr_1=5}] at @s run function sm/result/double_prize
execute as @s[scores={smr_2=5}] at @s run function sm/result/double_prize
execute as @s[scores={smr_3=5}] at @s run function sm/result/double_prize
execute as @s[scores={smr_1=70..71}] at @s run function sm/result/tokens
execute as @s[scores={smr_2=70..71}] at @s run function sm/result/tokens
execute as @s[scores={smr_3=70..71}] at @s run function sm/result/tokens
execute as @s[scores={smr_1=93..100}] at @s run function sm/result/bonus_roll
execute as @s[scores={smr_2=93..100}] at @s run function sm/result/bonus_roll
execute as @s[scores={smr_3=93..100}] at @s run function sm/result/bonus_roll
execute as @p[tag=sm_player,tag=sm_lose] at @s run function sm/final_result/lose
execute as @p[tag=sm_player,tag=sm_bonus_roll] at @s run function sm/final_result/bonus_roll
execute as @a[tag=sm_player,tag=!sm_bonus_roll] at @s run setblock -5 99 191 redstone_block