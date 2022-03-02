#aumento max satchel x1.5
scoreboard players operation @s mine_sat_m *= a3 vars
scoreboard players operation @s mine_sat_m /= a2 vars
#aumento max livello x2
scoreboard players operation @s mine_sat_xpm *= a2 vars
#resetta xp aumenta livello
scoreboard players set @s mine_sat_xp 0
scoreboard players add @s mine_sat_lvl 1
particle cr:levelup
playsound random.levelup @s
tellraw @s {"rawtext":[{"translate":"mine.satchel.levelup"}]}