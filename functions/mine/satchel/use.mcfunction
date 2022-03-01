scoreboard players operation @s temp = @s bal_mine
scoreboard players operation @s temp -= @s mine_sat_m
scoreboard players operation @s[scores={temp=..-1}] bal_mine = @s mine_sat_m
tellraw @s[scores={temp=..-1}] {"rawtext":[{"text":"Overflow!"}]}
scoreboard players operation @s mine_sat_xp += @s bal_mine
scoreboard players operation @s temp = @s mine_sat_xpm
scoreboard players operation @s temp -= @s mine_sat_xp
execute @s[scores={temp=..0}] ~ ~ ~ function mine/satchel/levelup
scoreboard players operation @s temp = @s mine_prestigem
scoreboard players operation @s temp -= @s mine_prestige
execute @s[scores={temp=..0}] ~ ~ ~ function mine/satchel/prestige
titleraw @s actionbar {"rawtext":[{"score":{"objective":"bal_mine","name":"@s"}},{"text":"/"},{"score":{"objective":"mine_sat_m","name":"@s"}},{"text":"\n"},{"score":{"objective":"mine_sat_xp","name":"@s"}},{"text":"/"},{"score":{"objective":"mine_sat_xpm","name":"@s"}},{"text":"\n"},{"score":{"objective":"mine_sat_prestige","name":"@s"}},{"text":"/"},{"score":{"objective":"mine_sat_prestigem","name":"@s"}}]}
scoreboard players operation @s bal += @s bal_mine
scoreboard players set @s bal_mine 0