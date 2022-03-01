scoreboard players remove @a[x=1175,y=1,z=1175,dx=90,dy=60,dz=90,tag=mine_memento_mori] mine_damage 10
execute @a[x=1175,y=1,z=1175,dx=90,dy=60,dz=90,tag=mine_rewind,scores={mine_damage=1000}] ~ ~ ~ function mine/enchants/rewind
execute @a[x=1175,y=1,z=1175,dx=90,dy=60,dz=90,scores={mine_damage=-100..0}] ~ ~ ~ function mine/break_pickaxe