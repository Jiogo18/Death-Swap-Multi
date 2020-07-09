scoreboard players reset mega death_swap_m
scoreboard players reset mega_added death_swap_m

#les entitées peuvent rester dans un chunk non chargé donc mieux vaut les retirer :
execute as @e[type=!player,tag=death_swap_mega] run function death_swap_multi:party/leave
tag @e[tag=death_swap_mega_n] remove death_swap_mega_n