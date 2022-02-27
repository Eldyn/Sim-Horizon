scoreboard players set @s vars 0
execute @a[tag=searching] ~~~ scoreboard players add @e[type=cr:cmd,name=cr_searching] vars 1
tellraw @a {"rawtext":{"score":{"objective":"vars","name":"@s"}}}
execute @s[scores={vars=2..}] ~~~ function cr/premake_game