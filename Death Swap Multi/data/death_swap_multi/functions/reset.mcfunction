#reset the datapack
scoreboard players reset * death_swap_m
scoreboard players set setuped death_swap_m 1
scoreboard players set timeout death_swap_m -1

scoreboard players reset * death_swap_t
scoreboard players enable @a death_swap_t
scoreboard players reset * death_swap_id
scoreboard players set id death_swap_m 0
scoreboard players reset * death_swap_death
tag @e[tag=death_swap_msa] remove death_swap_msa
tag @e[tag=death_swap_ms] remove death_swap_ms
tag @e[tag=death_swap_m] remove death_swap_m

tellraw @a [{"translate":"[Death Swap]: "},{"translate":"Datapack has been reseted"}]
function death_swap_multi:tellraw/start_game