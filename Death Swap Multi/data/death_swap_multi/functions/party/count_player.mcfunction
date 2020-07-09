scoreboard players set players death_swap_m 0
execute as @a[tag=death_swap_m] run scoreboard players add players death_swap_m 1

scoreboard players set players_extra death_swap_m 0
execute as @e[tag=death_swap_m,type=!player] run scoreboard players add players_extra death_swap_m 1

scoreboard players operation players_total death_swap_m = players death_swap_m
scoreboard players operation players_total death_swap_m += players_extra death_swap_m