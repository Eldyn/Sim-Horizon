scoreboard players remove @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,tag=mine_memento_mori] mine_damage 5
execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,tag=mine_rewind,scores={mine_damage=1000}] at @s run function mine/enchants/rewind
# execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,scores={mine_damage=-100..0},tag=!mine_relife] at @s run function mine/break_pickaxe
execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,scores={mine_damage=-100..0},tag=mine_relife] at @s run function mine/enchants/relife
execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90] at @s run function mine/sidebar


execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90] at @s run scoreboard players operation @s temp2 = @s mine_durability
execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90] at @s run scoreboard players operation @s temp2 /= a2 vars
execute as @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,tag=!mine_half_activated] at @s if score @s temp2 > @s mine_damage run tag @s[hasitem={location=slot.weapon.mainhand,item=cr:pickaxe0}] add mine_half