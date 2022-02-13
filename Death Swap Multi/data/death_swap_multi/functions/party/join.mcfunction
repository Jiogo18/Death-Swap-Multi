#pas encore dans la partie && pas en tant que mega
execute if entity @s[tag=!death_swap_m,tag=!death_swap_mega] run function death_swap_multi:tellraw/joined

execute if entity @s[type=player] run function death_swap_multi:party/join/if_player

execute unless entity @s[scores={death_swap_id=1..}] run function death_swap_multi:party/join/add_id

tag @s add death_swap_m
