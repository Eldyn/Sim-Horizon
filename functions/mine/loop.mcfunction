scoreboard players remove @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,tag=mine_memento_mori] mine_damage 5
execute @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,tag=mine_rewind,scores={mine_damage=1000}] ~ ~ ~ function mine/enchants/rewind
execute @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,scores={mine_damage=-100..0},tag=!mine_relife] ~ ~ ~ function mine/break_pickaxe
execute @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90,scores={mine_damage=-100..0},tag=mine_relife] ~ ~ ~ function mine/enchants/relife
execute @a[x=1175,y=0,z=1175,dx=90,dy=61,dz=90] ~~~ function mine/sidebar
