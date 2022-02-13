#déjà dans la partie && pas en tant que mega
execute if entity @s[tag=death_swap_m,tag=!death_swap_mega] run function death_swap_multi:tellraw/left

scoreboard players reset @s death_swap_join
scoreboard players enable @s death_swap_join

scoreboard players reset @s death_swap_id

tag @s remove death_swap_m
tag @s remove death_swap_mega

