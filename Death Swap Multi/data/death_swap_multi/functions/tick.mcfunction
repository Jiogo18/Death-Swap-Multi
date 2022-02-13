execute if score enabled death_swap_main matches 1 run function death_swap_multi:process

execute as @a[predicate=death_swap_multi:is_joining,limit=1] run function death_swap_multi:party/join
execute as @a[predicate=death_swap_multi:is_living] run function death_swap_multi:party/leave
