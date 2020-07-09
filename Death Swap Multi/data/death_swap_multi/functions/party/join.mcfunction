#pas encore dans la partie && pas en tant que mega
execute if entity @s[tag=!death_swap_m,tag=!death_swap_mega] run function death_swap_multi:tellraw/joined

scoreboard players set @s[type=player] death_swap_t 1
scoreboard players enable @s[type=player] death_swap_t

execute unless entity @s[scores={death_swap_id=1..}] run scoreboard players add id death_swap_m 1
execute unless entity @s[scores={death_swap_id=1..}] run scoreboard players operation @s death_swap_id = id death_swap_m

scoreboard players set @s[type=player] death_swap_death 0

tag @s add death_swap_m
