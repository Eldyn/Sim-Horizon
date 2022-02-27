scoreboard players operation sm_totalwin vars /= a2 vars
scoreboard players operation sm_totalwin vars += sm_totalwin vars
scoreboard players operation sm_totalwin vars += sm_totalwin vars
scoreboard players add @p[tag=sm_player] bal 200
scoreboard players operation @p[tag=sm_player] bal += sm_totalwin vars
tellraw @p[tag=sm_player] {"rawtext":[{"translate":"sm.win_self"},{"score":{"objective":"vars","name":"sm_totalwin"}},{"text":"§g$"}]}
tellraw @a[tag=!sm_player] {"rawtext":[{"text":"- §l"},{ "selector": "@p[tag=sm_player]" },{"translate":"sm.win_others"},{"score":{"objective":"vars","name":"sm_totalwin"}},{"text":"§6$§7)§f -"}]}
playsound block.end_portal_frame.fill @a ~ ~ ~ 1 1 1
scoreboard players set sm_totalwin vars 100
setblock 1080 -6 1025 redstone_block