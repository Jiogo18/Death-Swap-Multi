function death_swap_multi:tellraw/time_if_sec

execute if score timeout death_swap_m matches 0 run function death_swap_multi:swap/swap
execute if score timeout death_swap_m matches ..0 unless entity @e[tag=death_swap_ms] run function death_swap_multi:random/random

execute if entity @e[tag=death_swap_ms] run function death_swap_multi:swap/swap_everybody
execute unless entity @e[tag=death_swap_ms] run scoreboard players remove timeout death_swap_m 1

#mort = perdu
execute as @a[tag=death_swap_m,scores={death_swap_death=1..}] run function death_swap_multi:party/game_over

execute if score mega death_swap_m matches 1.. run function death_swap_multi:mega/process