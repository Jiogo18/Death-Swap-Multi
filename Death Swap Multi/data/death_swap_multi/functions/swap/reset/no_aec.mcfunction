#si plus de _arc (le tp a mis trop de temps = la dernière entitée n'a pas été tp)
#tellraw @a [{"translate":"[Death Swap]: ","color":"dark_red"},{"translate":"Tp has timeout"}]

tag @e[tag=death_swap_entity_to_tp] remove death_swap_entity_to_tp
kill @e[type=area_effect_cloud,tag=death_swap_aec]