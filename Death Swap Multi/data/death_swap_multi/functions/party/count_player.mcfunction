scoreboard players set players death_swap_main 0
execute as @a[tag=death_swap_m] run scoreboard players add players death_swap_main 1

scoreboard players set mobs death_swap_main 0
execute as @e[tag=death_swap_m,type=!player] run scoreboard players add mobs death_swap_main 1

scoreboard players operation entities death_swap_main = players death_swap_main
scoreboard players operation entities death_swap_main += mobs death_swap_main