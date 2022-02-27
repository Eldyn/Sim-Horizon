scoreboard players operation sm_totalwin vars /= a2 vars
tellraw @p[tag=sm_player] {"rawtext":[{"translate":"sm.half_self"},{"score":{"objective":"vars","name":"sm_totalwin"}},{"text":"§g$§7)"}]}
tellraw @a[tag=o_smchat,tag=!sm_player] {"rawtext":[{"text":"- §l"},{ "selector": "@p[tag=sm_player]" },{"translate":"sm.half_others"},{"score":{"objective":"vars","name":"sm_totalwin"}},{"text":"§6$§7)§f -"}]}
playsound block.end_portal_frame.fill @a ~ ~ ~ 1 1 1