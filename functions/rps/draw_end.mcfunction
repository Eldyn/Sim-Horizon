setblock 1087 -14 1064 glass
scoreboard players set @s rps_card 0
scoreboard players set @s rps_timer 12
kill @e[type=item,r=2]
scoreboard players set rps_c_rock vars 0
scoreboard players set rps_c_paper vars 0
scoreboard players set rps_c_scissors vars 0
execute @e[type=armor_stand,name=rps_main,scores={rps_round=0}] ~ ~ ~ give @a[tag=rps_p1] sp:rps_scissors 1 0 {"item_lock":{"mode":"lock_in_inventory"}}