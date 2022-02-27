replaceitem entity @s[scores={pit_cooldown=20}] slot.hotbar 8 cr:oncooldown 20 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
scoreboard players add @s[scores={pit_cooldown=!..0}] pit_cooldown -1
clear @s[scores={pit_cooldown=!..0}] cr:oncooldown -1 1
replaceitem entity @s[scores={pit_cooldown=0}] slot.hotbar 8 cr:cooldownready 1 0 {"minecraft:item_lock":{ "mode": "lock_in_slot" }}
event entity @s[scores={pit_cooldown=0}] blue_knight_ready
titleraw @s[scores={pit_cooldown=0}] title {"rawtext":[{"text":"ALERT §gAttenzione§l!\n§r§f L' Abilità E' Pronta§l!"}]}
titleraw @s[scores={pit_cooldown=0}] subtitle {"rawtext":[{"text":"ALERT \uE000"}]}
playsound random.levelup @s[scores={pit_cooldown=0}] ~~~ 0.5 1.5 0.5
scoreboard players set @s[scores={pit_cooldown=0}] pit_cooldown -1