#aggiungi energia
scoreboard players operation @s mine_batteries -= @s temp 
scoreboard players operation @s temp *= a250 vars
scoreboard players operation @s mine_damage += @s temp

tellraw @s {"rawtext":[{"score":{"objective":"mine_damage","name":"@s"}}]}

#check max durability
scoreboard players operation @s temp = @s mine_durability
scoreboard players operation @s temp -= @s mine_damage
scoreboard players operation @s[scores={temp=..0}] mine_damage = @s mine_durability

playsound random.levelup @s