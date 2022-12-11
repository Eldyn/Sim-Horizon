scoreboard players set @s vars 0
execute as @a[tag=searching] at @s run scoreboard players add @e[type=cr:cmd,name=cr_searching] vars 1
tellraw @a {"rawtext":{"score":{"objective":"vars","name":"@s"}}}
execute as @s[scores={vars=2..}] at @s run function cr/premake_game