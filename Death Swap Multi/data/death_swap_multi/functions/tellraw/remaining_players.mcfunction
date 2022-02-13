function death_swap_multi:party/count_player

execute if score mobs death_swap_main matches 0 run tellraw @a [{"translate":"[Death Swap]: "},{"score":{"name":"players","objective":"death_swap_main"}},{"translate":" players left"}]
execute unless score mobs death_swap_main matches 0 run tellraw @a [{"translate":"[Death Swap]: "},{"score":{"name":"players","objective":"death_swap_main"}},{"translate":" players (and "},{"score":{"name":"mobs","objective":"death_swap_main"}},{"translate":" mobs) left"}]