scoreboard players add @e[name=rps_main,type=armor_stand] rps_card 1
execute @e[type=armor_stand,name=rps_main,scores={rps_card=..3}] ~ ~ ~ tp @e[type=item,r=2] @p[tag=rps_p1]
execute @e[type=armor_stand,name=rps_main,scores={rps_card=4..}] ~ ~ ~ tp @e[type=item,r=2] @p[tag=rps_p2]
execute @a[x=1075,y=0,z=1060,dx=13,dy=6,dz=22] ~~~ playsound item.book.page_turn @s ~ ~ ~ 1 2.3 1
stopsound @a random.click