scoreboard players operation @s temp = @s mine_damage
scoreboard players operation @s temp /= a250 vars
scoreboard players operation @s mine_batteries += @s temp

tellraw @s {"rawtext":[{"score":{"objective":"temp","name":"@s"}}]}
playsound random.levelup @s

#berserk workaround
tag @s add mine_berserk

function mine/break_pickaxe