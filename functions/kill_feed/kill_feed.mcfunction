scoreboard objectives add temp_kill dummy
scoreboard objectives add temp_dead dummy
scoreboard objectives add kill_streak dummy
scoreboard players add @a kill_streak 0
execute as @a[scores={temp_kill=1},tag=pit] at @s run execute as @a[scores={temp_dead=1,kill_streak=!5..}] at @s run tellraw @a[tag=pit] {"rawtext":[{"selector":"@s"},{"text":" è stato ucciso da "},{"selector":"@a[scores={temp_kill=1},tag=pit]"}]}
execute as @a[scores={temp_kill=1},tag=pit] at @s run scoreboard players add @s total_kill 1
execute as @a[scores={temp_kill=1},tag=pit] at @s run scoreboard players add @s kill_streak 1
execute as @a[scores={temp_kill=1},tag=pit] at @s run titleraw @s title {"rawtext":[{"text":"Hai Ucciso: §l"},{"selector":"@a[scores={temp_dead=1},tag=pit]"}]}
execute as @a[scores={temp_dead=1},tag=pit] at @s run scoreboard players add @s total_dead 1
execute as @a[scores={temp_kill=1},tag=pit] at @s run execute as @a[scores={temp_dead=1,kill_streak=5..}] at @s run tellraw @a[tag=pit] {"rawtext":[{"selector":"@a[scores={temp_kill=1},tag=pit]"},{"text":" Ha interrotto la serie di uccisioni §7[§a"},{"score":{"name":"@s","objective":"kill_streak"}},{"text":"§7] di "},{"selector":"@a[scores={temp_dead=1},tag=pit]"}]}
execute as @a[scores={temp_dead=1},tag=pit] at @s run scoreboard players set @s kill_streak 0
execute as @a[scores={temp_dead=1},tag=pit] at @s run scoreboard players reset @s temp_dead
execute as @a[scores={temp_kill=1},tag=pit] at @s run scoreboard players reset @s temp_kill