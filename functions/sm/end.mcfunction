setblock 1080 -6 1025 wool
tag @s remove sm_player
tag @s remove sm_bonus_roll
tag @s remove sm_lose
tag @s remove sm_hyper_roll
tag @s remove sm_win_tokens
fill 1077 1 1018 1087 5 1018 netherite_block
setblock 1082 0 1019 sp:insert_token
scoreboard players reset sm_timer vars