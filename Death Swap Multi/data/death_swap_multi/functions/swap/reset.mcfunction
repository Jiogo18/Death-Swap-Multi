#si plus de _ma (elles ont disparu (?))
execute if entity @e[tag=death_swap_ms] unless entity @e[tag=death_swap_ma] run tellraw @a [{"translate":"[Death Swap]: ","color":"dark_red"},{"translate":"Tp has timeout"}]

#si plus de _ms (ils sont mort/ramassés)
execute if entity @e[tag=death_swap_ma] unless entity @e[tag=death_swap_ms] run tellraw @a [{"translate":"[Death Swap]: ","color":"dark_red"},{"translate":"Players disappeared during the tp"}]

tag @e[tag=death_swap_ms] remove death_swap_ms
kill @e[type=area_effect_cloud,tag=death_swap_ma]