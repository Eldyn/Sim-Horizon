scoreboard players add @s mine_sat_m 64
scoreboard players add @s mine_sat_xpm 128
scoreboard players set @s mine_sat_xp = mine_sat_xpm
scoreboard players add @s mine_sat_lvl 1
particle cr:levelup
playsound random.levelup @s
tellraw @s {"rawtext":[{"translate":"mine.satchel.levelup"}]}