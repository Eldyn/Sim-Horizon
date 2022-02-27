execute @s[scores={smr_1=63..69}] ~ ~ ~ execute @s[scores={smr_2=63..69}] ~ ~ ~ execute @s[scores={smr_3=63..69}] ~ ~ ~ function sm/final_result/win_copper
execute @s[scores={smr_1=72..87}] ~ ~ ~ execute @s[scores={smr_2=72..87}] ~ ~ ~ execute @s[scores={smr_3=72..87}] ~ ~ ~ function sm/final_result/win_rare
execute @s[scores={smr_1=72..87}] ~ ~ ~ execute @s[scores={smr_2=72..87}] ~ ~ ~ execute @s[scores={smr_3=88..92}] ~ ~ ~ function sm/final_result/win_rare
execute @s[scores={smr_1=88..92}] ~ ~ ~ execute @s[scores={smr_2=72..87}] ~ ~ ~ execute @s[scores={smr_3=72..87}] ~ ~ ~ function sm/final_result/win_rare
execute @s[scores={smr_1=88..92}] ~ ~ ~ execute @s[scores={smr_2=88..92}] ~ ~ ~ execute @s[scores={smr_3=88..92}] ~ ~ ~ function sm/final_result/win_epic
execute @s[scores={smr_1=93..100}] ~ ~ ~ execute @s[scores={smr_2=93..100}] ~ ~ ~ execute @s[scores={smr_3=93..100}] ~ ~ ~ function sm/final_result/hyper_roll
execute @s[scores={smr_1=1..3}] ~ ~ ~ execute @s[scores={smr_2=1..3}] ~ ~ ~ execute @s[scores={smr_3=1..3}] ~ ~ ~ function sm/final_result/delete_prize
execute @s[scores={smr_1=72..87}] ~ ~ ~ execute @s[scores={smr_2=88..92}] ~ ~ ~ execute @s[scores={smr_3=88..92}] ~ ~ ~ function sm/final_result/win_rarer
execute @s[scores={smr_1=88..92}] ~ ~ ~ execute @s[scores={smr_2=88..92}] ~ ~ ~ execute @s[scores={smr_3=72..87}] ~ ~ ~ function sm/final_result/win_rarer
execute @s[scores={smr_1=6..62}] ~ ~ ~ function sm/result/lose
execute @s[scores={smr_2=6..62}] ~ ~ ~ function sm/result/lose
execute @s[scores={smr_3=6..62}] ~ ~ ~ function sm/result/lose
execute @s[scores={smr_1=4}] ~ ~ ~ function sm/result/half_prize
execute @s[scores={smr_2=4}] ~ ~ ~ function sm/result/half_prize
execute @s[scores={smr_3=4}] ~ ~ ~ function sm/result/half_prize
execute @s[scores={smr_1=5}] ~ ~ ~ function sm/result/double_prize
execute @s[scores={smr_2=5}] ~ ~ ~ function sm/result/double_prize
execute @s[scores={smr_3=5}] ~ ~ ~ function sm/result/double_prize
execute @s[scores={smr_1=70..71}] ~ ~ ~ function sm/result/tokens
execute @s[scores={smr_2=70..71}] ~ ~ ~ function sm/result/tokens
execute @s[scores={smr_3=70..71}] ~ ~ ~ function sm/result/tokens
execute @s[scores={smr_1=93..100}] ~ ~ ~ function sm/result/bonus_roll
execute @s[scores={smr_2=93..100}] ~ ~ ~ function sm/result/bonus_roll
execute @s[scores={smr_3=93..100}] ~ ~ ~ function sm/result/bonus_roll
execute @p[tag=sm_player,tag=sm_lose] ~ ~ ~ function sm/final_result/lose
execute @p[tag=sm_player,tag=sm_bonus_roll] ~ ~ ~ function sm/final_result/bonus_roll
execute @a[tag=sm_player,tag=!sm_bonus_roll] ~ ~ ~ setblock -5 99 191 redstone_block