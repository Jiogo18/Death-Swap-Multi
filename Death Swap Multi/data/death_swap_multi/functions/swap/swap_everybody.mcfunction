# si plus de _aec mais encore des _to_tp (le tp a mis trop de temps => la dernière entitée n'a pas été tp)
execute if entity @e[tag=death_swap_entity_to_tp] unless entity @e[tag=death_swap_aec] run function death_swap_multi:swap/reset/no_aec
# si plus de _to_tp mais encore des _arc (ils sont mort/déco)
execute if entity @e[tag=death_swap_aec] unless entity @e[tag=death_swap_entity_to_tp] run function death_swap_multi:swap/reset/no_to_tp

execute as @e[tag=death_swap_entity_to_tp,sort=random] run function death_swap_multi:swap/tp_if

#debug: the Duration of areas (in swap/create_area/create) must be greater than debug_time_swap
scoreboard players add debug_time_swap death_swap_main 1
