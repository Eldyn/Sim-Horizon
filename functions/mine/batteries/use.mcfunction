#aggiungi energia
scoreboard players operation @s mine_batteries -= @s temp 
scoreboard players operation @s temp *= a250 vars
scoreboard players operation @s mine_damage += @s temp
scoreboard players operation @s temp = @s mine_damage

#check max durability
scoreboard players operation @s temp -= @s mine_durability
scoreboard players operation @s[scores={temp=..0}] mine_damage = @s mine_durability

tellraw @s {"rawtext":[{"score":{"objective":"temp","name":"@s"}}]}
playsound random.levelup @s