#max
scoreboard players operation @s temp = @s mine_sat_m
scoreboard players operation @s temp -= @s bal_mine
scoreboard players operation @s[scores={temp=..-1}] bal_mine = @s mine_sat_m
tellraw @s[scores={temp=..-1}] {"rawtext":[{"translate":"mine.overflow1"},{"score":{"name":"@s","objective":"temp"}}, {"translate":"mine.overflow2"}]}



tellraw @s {"rawtext":[{"translate":"sidebar.mine.satchel"},{"score":{"name":"@s","objective":"bal_mine"}},{"text":"/"},{"score":{"name":"@s","objective":"mine_sat_m"}}]}
tellraw @s {"rawtext":[{"translate":"sidebar.mine.modules"}]}
tellraw @s[tag=mine_sat_berserker] {"rawtext":[{"translate":"module.berserker"}]}
tellraw @s[tag=mine_sat_devorer] {"rawtext":[{"translate":"module.devorer"}]}
tellraw @s[tag=mine_sat_fortuna] {"rawtext":[{"translate":"module.fortuna"}]}