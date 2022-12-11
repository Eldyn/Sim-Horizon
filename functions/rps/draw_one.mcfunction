scoreboard players add @e[name=rps_main,type=armor_stand] rps_card 1
execute as @e[type=armor_stand,name=rps_main,scores={rps_card=..3}] at @s run tp @e[type=item,r=2] @p[tag=rps_p1]
execute as @e[type=armor_stand,name=rps_main,scores={rps_card=4..}] at @s run tp @e[type=item,r=2] @p[tag=rps_p2]
execute as @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] at @s run playsound item.book.page_turn @s ~ ~ ~ 1 2.3 1
stopsound @a random.click