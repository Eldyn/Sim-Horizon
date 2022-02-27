scoreboard players add @a[tag=sm_player] bal 200
tellraw @a[tag=sm_player] {"rawtext":[{"translate":"sm.win_copper"}]}
playsound random.levelup @a[tag=sm_player] ~ ~ ~ 1 1.5 1
playsound mob.villager.yes @a[tag=sm_player] ~~~ 1 1 1
setblock 1080 -6 1025 redstone_block