scoreboard players set enabled death_swap_main 1
scoreboard players enable @a death_swap_join
scoreboard players reset * death_swap_death

scoreboard players set mega death_swap_main 1

tellraw @a [{"translate":"[Death Swap]: "},{"translate":"Mega Death Swap has started! (with all entities in the world)"}]