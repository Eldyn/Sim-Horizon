scoreboard players random temp vars 28 31
scoreboard players random temp2 vars 19 45
scoreboard players operation @a[dx=56,dy=40,dz=47,tag=cr_red] trophies += temp vars
scoreboard players operation @a[dx=56,dy=40,dz=47,tag=cr_blue] trophies -= temp vars
scoreboard players operation @a[dx=56,dy=40,dz=47,tag=cr_red] bal += temp2 vars
titleraw @a[dx=56,dy=40,dz=47,tag=cr_red] title {"rawtext":[{"text":"Hai vinto!"}]}
titleraw @a[dx=56,dy=40,dz=47,tag=cr_blue] title {"rawtext":[{"text":"Hai perso!"}]}
titleraw @a[dx=56,dy=40,dz=47,tag=cr_red] subtitle {"rawtext":[{"text":"+"},{"score":{"name":"temp2","objective":"vars"}},{"text":"M +"},{"score":{"name":"temp","objective":"vars"}},{"text":"T"}]}
titleraw @a[dx=56,dy=40,dz=47,tag=cr_blue] subtitle {"rawtext":[{"text":"-"},{"score":{"name":"temp","objective":"vars"}},{"text":"T"}]}
execute @a[dx=56,dy=40,dz=47,tag=cr_red] ~~~ playsound mob.villager.yes @s
execute @a[dx=56,dy=40,dz=47,tag=cr_blue] ~~~ playsound mob.villager.no @s
scoreboard players set @s timer 0