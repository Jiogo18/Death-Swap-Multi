#0-5
execute if score timeout death_swap_main matches 0..100 run function death_swap_multi:tellraw/time
#10
execute if score timeout death_swap_main matches 200 run function death_swap_multi:tellraw/time
#30
execute if score timeout death_swap_main matches 600 run function death_swap_multi:tellraw/time
#1min
execute if score timeout death_swap_main matches 1200 run function death_swap_multi:tellraw/time
#2min
execute if score timeout death_swap_main matches 2400 run function death_swap_multi:tellraw/time
#3min
execute if score timeout death_swap_main matches 3600 run function death_swap_multi:tellraw/time
#4min
execute if score timeout death_swap_main matches 4800 run function death_swap_multi:tellraw/time
#5min (max par défaut)
execute if score timeout death_swap_main matches 6000 run function death_swap_multi:tellraw/time
#10min
execute if score timeout death_swap_main matches 12000 run function death_swap_multi:tellraw/time
#1h
execute if score timeout death_swap_main matches 72000 run function death_swap_multi:tellraw/time