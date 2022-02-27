tellraw @a[tag=o_smchat,tag=!sm_player] {"rawtext":[{"text":"- §l"},{ "selector": "@p[tag=sm_player]" },{"translate":"sm.delete_others"}]}
tellraw @a[tag=sm_player] {"rawtext":[{"translate":"sm.delete_self"}]}
playsound mob.enderdragon.death @a ~ ~ ~ 1 1 1
scoreboard players set sm_totalwin vars 1000
setblock 1080 -6 1025 redstone_block