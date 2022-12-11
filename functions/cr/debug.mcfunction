execute as @e[type=cr:cmd,name=cr_counter] at @s run function cr/end_game
kill @e[name=cr_empty]
kill @e[name=cr_generator]
summon cr:cmd cr_generator 1999 201 2013
tag @a remove cr_player
tag @a remove cr_red
tag @a remove cr_blue
tickingarea remove Area0
tickingarea remove Area1
tickingarea remove Area2
tickingarea remove Area3
tickingarea remove Area4
tickingarea remove Area5
tickingarea remove Area6
tickingarea remove Area7
tickingarea remove Area8
tickingarea remove Area9
tickingarea remove Area10