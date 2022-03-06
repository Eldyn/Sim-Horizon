titleraw @s[tag=!sidebar_disabled,tag=!sidebar_green,tag=!sidebar_red,tag=!sidebar_purple,tag=!sidebar_yellow] actionbar {"rawtext":[{"text":"§b§lSimulation Horizon§r\n\n§7"},{"translate":"sidebar.playtime"},{"score":{"name": "@s","objective":"h"}},{"text":"§7h §f"},{"score":{"name":"@s","objective":"m"}},{"text":"§7m\n"},{"translate":"sidebar.balance"},{"score":{"name":"@s","objective":"bal"}},{"text":" {§cH§f}\n"},{"translate":"sidebar.tokens"},{"score": {"name":"@s","objective":"tokens"}},{"text":"\n\n"},{"translate":"sidebar.mine"},{"text":"\n§r"},{"translate":"sidebar.mine.satchel"},{"score":{"name":"@s","objective":"bal_mine"}},{"text":"§7/§f"},{"score":{"name": "@s","objective":"mine_sat_m"}},{"text":" §7(§f"},{"score":{"name":"@s","objective":"mine_perc"}},{"text":"§7)\n"}]}

#percentuale soldi
scoreboard players operation @s temp = @s bal_mine
scoreboard players operation @s temp *= a100 vars
scoreboard players operation @s temp /= @s mine_sat_m
scoreboard players operation @s mine_perc = @s temp
