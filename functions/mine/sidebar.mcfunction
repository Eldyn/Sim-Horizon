titleraw @s[tag=!sidebar_disabled,tag=!sidebar_green,tag=!sidebar_red,tag=!sidebar_purple,tag=!sidebar_yellow] actionbar {"rawtext":[{"text":"§b§lSimulation Horizon§r\n\n§7"},{"translate":"sidebar.playtime"},{"score":{"name": "@s","objective":"h"}},{"text":"§7h §f"},{"score":{"name":"@s","objective":"m"}},{"text":"§7m\n"},{"translate":"sidebar.balance"},{"score":{"name":"@s","objective":"bal"}},{"text":" {§cH§f}\n"},{"translate":"sidebar.tokens"},{"score": {"name":"@s","objective":"tokens"}},{"text":"\n\n"},{"translate":"sidebar.mine"},{"text":"\n\n§r"},{"translate":"sidebar.mine.satchel"},{"score":{"name":"@s","objective":"mine_perc"}},{"text":"§7%\n"},{"translate":"sidebar.mine.level"},{"score":{"name":"@s","objective":"mine_sat_lvl"}},{"text":"\n"},{"translate":"sidebar.mine.prestige"},{"score":{"name":"@s","objective":"mine_prestige"}},{"text":"\n"},{"translate":"sidebar.mine.xp"},{"score":{"name":"@s","objective":"mine_xpperc"}},{"text":"§7%"}]}
titleraw @s[tag=!sidebar_disabled,tag=!sidebar_green,tag=!sidebar_red,tag=!sidebar_purple,tag=!sidebar_yellow,scores={mine_perc=101..}] actionbar {"rawtext":[{"text":"§b§lSimulation Horizon§r\n\n§7"},{"translate":"sidebar.playtime"},{"score":{"name": "@s","objective":"h"}},{"text":"§7h §f"},{"score":{"name":"@s","objective":"m"}},{"text":"§7m\n"},{"translate":"sidebar.balance"},{"score":{"name":"@s","objective":"bal"}},{"text":" {§cH§f}\n"},{"translate":"sidebar.tokens"},{"score": {"name":"@s","objective":"tokens"}},{"text":"\n\n"},{"translate":"sidebar.mine"},{"text":"\n\n§r"},{"translate":"sidebar.mine.satchel"},{"text":"§c"},{"score":{"name":"@s","objective":"mine_perc"}},{"text":"§c% §lO§r\n"},{"translate":"sidebar.mine.level"},{"score":{"name":"@s","objective":"mine_sat_lvl"}},{"text":"\n"},{"translate":"sidebar.mine.prestige"},{"score":{"name":"@s","objective":"mine_prestige"}},{"text":"\n"},{"translate":"sidebar.mine.xp"},{"score":{"name":"@s","objective":"mine_xpperc"}},{"text":"§7%"}]}

#percentuale bal_mine
scoreboard players operation @s temp = @s bal_mine
scoreboard players operation @s temp *= a100 vars
scoreboard players operation @s temp /= @s mine_sat_m
scoreboard players operation @s mine_perc = @s temp
#percentuale xp
scoreboard players operation @s temp = @s mine_sat_xp
scoreboard players operation @s temp *= a100 vars
scoreboard players operation @s temp /= @s mine_sat_xpm
scoreboard players operation @s mine_xpperc = @s temp
