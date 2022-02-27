scoreboard players random sm_tokens vars 1 5
scoreboard players operation @a[tag=sm_player] tokens += sm_tokens vars
tellraw @p[tag=sm_player] {"rawtext":[{"translate":"sm.tokens"},{"score":{"name":"sm_tokens","objective":"vars"}},{"text":"§7) §b Token§l!"}]}
tag @a[tag=sm_player] add sm_win_tokens
scoreboard players reset sm_tokens vars