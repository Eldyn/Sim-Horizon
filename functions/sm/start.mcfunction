setblock 1082 0 1019 air
tag @s add sm_player
playsound sm @a[r=9] ~ ~ ~ 1 1.2 1
scoreboard players set sm_timer vars 5
setblock 1085 -6 1022 redstone_block
tag @s remove sm_bonus_roll
tag @s remove sm_hyper_roll
tag @s remove sm_win_tokens
setblock 1080 -6 1028 wool
kill @e[type=armor_stand,name=sm_main]
summon armor_stand sm_main 1079 -6 1024