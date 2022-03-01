setblock 1080 -6 1028 redstone_block
tellraw @a[tag=sm_player,tag=!sm_hyper_roll] {"rawtext":[{"text":"§l- §r§cBonus Roll§l! §f-"}]}
playsound random.levelup @a[tag=sm_player] ~~~ 1 1.5 1