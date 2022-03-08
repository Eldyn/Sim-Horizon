#aumento max satchel + livello*9
scoreboard players operation @s temp = @s mine_sat_lvl
scoreboard players operation @s temp *= a3 vars
scoreboard players operation @s mine_sat_m += @s temp



#resetta xp aumenta livello
scoreboard players set @s mine_sat_xp 0
scoreboard players add @s mine_sat_lvl 1
particle cr:levelup
playsound cr:levelup @s ~~~ 1 1 1 
tellraw @s {"rawtext":[{"translate":"mine.satchel.levelup"}]}
#punti livello
scoreboard players add @s mine_pl 1


#aumento max livello + livello*36
scoreboard players operation @s temp = @s mine_sat_lvl
scoreboard players operation @s temp *= mine_xpcap vars
scoreboard players operation @s mine_sat_xpm += @s temp