scoreboard players reset mega death_swap_main
scoreboard players reset mega_added death_swap_main

#les entitées peuvent rester dans un chunk non chargé donc mieux vaut les retirer :
execute as @e[type=!player,tag=death_swap_mega] run function death_swap_multi:party/leave
