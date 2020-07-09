execute if score enabled death_swap_m matches 1 run function death_swap_multi:process

execute as @a[scores={death_swap_t=1},tag=!death_swap_m,limit=1] run function death_swap_multi:party/join
execute as @a[tag=death_swap_m,scores={death_swap_t=0}] run function death_swap_multi:party/leave
