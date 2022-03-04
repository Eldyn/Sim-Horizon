#aumento max satchel + livello*3
scoreboard players operation @s temp = @s mine_sat_lvl
scoreboard players operation @s temp *= a3 vars
scoreboard players operation @s mine_sat_m += @s temp



#resetta xp aumenta livello
scoreboard players set @s mine_sat_xp 0
scoreboard players add @s mine_sat_lvl 1
particle cr:levelup
playsound random.levelup @s
tellraw @s {"rawtext":[{"translate":"mine.satchel.levelup"}]}

#aumento max livello + livello*12
scoreboard players operation @s temp = @s mine_sat_lvl
scoreboard players operation @s temp *= mine_xpcap vars
scoreboard players operation @s mine_sat_xpm += @s temp