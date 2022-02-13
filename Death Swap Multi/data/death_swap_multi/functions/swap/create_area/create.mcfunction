#remove old _aec
kill @e[type=area_effect_cloud,tag=death_swap_aec]

# Area Effect Cloud (One per Entity)
tag @e[tag=death_swap_aec] remove death_swap_aec

#la duration est sur du random: normalement tout se passe en 1 tick mais il peut etre plus long
#(il y a 98% de chance que ça se passe en 4 ticks max)
#si c'est plus de 20 ticks alors les areas disparaissent et on abandonne le tp (relance le timer)
execute as @e[tag=death_swap_entity_to_tp] at @s run function death_swap_multi:swap/create_area/for_me
