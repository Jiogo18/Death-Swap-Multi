scoreboard players operation timeout2 death_swap_main = timeout death_swap_main
scoreboard players operation timeout2 death_swap_main %= 20 death_swap_main
execute if score timeout2 death_swap_main matches 0 run function death_swap_multi:tellraw/time_if_useful
scoreboard players reset timeout2 death_swap_main