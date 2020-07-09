#si encore des _ms (joueurs) mais plus de _ma / si encore des _ma (area) mais plus de _ms
execute if entity @e[tag=death_swap_ms] unless entity @e[tag=death_swap_ma] run function death_swap_multi:swap/reset
execute if entity @e[tag=death_swap_ma] unless entity @e[tag=death_swap_ms] run function death_swap_multi:swap/reset

execute as @e[tag=death_swap_ms,sort=random] run function death_swap_multi:swap/tp_if

#si il y a pas "2 _ms ou plus" alors il en reste 1 ou 0 => on tp le dernier joueur
execute unless entity @e[tag=death_swap_ms,limit=2] run function jio18_death_swap:swap/tp2mas

#debug: the Duration of areas (in swap/create_area) must be greater than debug_time_swap
scoreboard players add debug_time_swap death_swap_m 1
