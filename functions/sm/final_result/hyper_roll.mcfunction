tellraw @a[tag=sm_player] {"rawtext":[{"text":"§f- §d§lHYPER Roll!§r§f -"}]}
tag @a[tag=sm_player] add sm_hyper_roll
playsound random.totem @a[tag=sm_player] ~ ~ ~ 1 1 1
scoreboard players random @a[tag=sm_player] smr_1 1 10
give @a[tag=sm_player,scores={smr_1=1}] sp:token 1
give @a[tag=sm_player,scores={smr_1=2}] sp:token 2
give @a[tag=sm_player,scores={smr_1=3}] sp:token 3
give @a[tag=sm_player,scores={smr_1=4}] sp:token 4
give @a[tag=sm_player,scores={smr_1=5}] sp:token 5
give @a[tag=sm_player,scores={smr_1=6}] sp:token 6
give @a[tag=sm_player,scores={smr_1=7}] sp:token 7
give @a[tag=sm_player,scores={smr_1=8}] sp:token 8
give @a[tag=sm_player,scores={smr_1=9}] sp:token 9
give @a[tag=sm_player,scores={smr_1=10}] sp:token 10
scoreboard players reset @a[tag=sm_player] smr_1