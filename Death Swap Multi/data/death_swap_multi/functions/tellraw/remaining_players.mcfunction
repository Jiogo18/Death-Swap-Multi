function death_swap_multi:party/count_player

execute if score players_extra death_swap_m matches 0 run tellraw @a [{"translate":"[Death Swap]: "},{"score":{"name":"players","objective":"death_swap_m"}},{"translate":" players left"}]
execute unless score players_extra death_swap_m matches 0 run tellraw @a [{"translate":"[Death Swap]: "},{"score":{"name":"players","objective":"death_swap_m"}},{"translate":" players (and "},{"score":{"name":"players_extra","objective":"death_swap_m"}},{"translate":" mobs) left"}]