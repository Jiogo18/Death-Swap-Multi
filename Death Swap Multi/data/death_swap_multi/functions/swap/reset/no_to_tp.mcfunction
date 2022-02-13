#si plus de _ms (ils sont mort/ramassés)
tellraw @a [{"translate":"[Death Swap]: ","color":"dark_red"},{"translate":"Players disappeared during the tp"}]

tag @e[tag=death_swap_entity_to_tp] remove death_swap_entity_to_tp
kill @e[type=area_effect_cloud,tag=death_swap_aec]