summon minecraft:lightning_bolt ~-0.5 ~-0.5 ~-0.5
scoreboard players random @a[tag=give_pickaxe] i_mine_pickaxe 30 50
playsound mob.wither.spawn @a[tag=give_pickaxe] ~~~ 1 1.5 1
execute @a[tag=give_pickaxe] ~ ~ ~ function mine/give_pickaxe
setblock ~ ~ ~ air