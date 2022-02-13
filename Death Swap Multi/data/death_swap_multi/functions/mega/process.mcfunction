#toute entitée dans la partie mais trop loins (256 blocks = 16 chunks)
execute as @e[type=!player,tag=death_swap_mega] at @s unless entity @p[distance=..256] run function death_swap_multi:party/leave

#toute entitée non joueur proche d'un joueur (128 blocks = 8 chunks) qui est pas dans la partie
execute as @a at @s as @e[type=#death_swap_multi:mega_whitelist,tag=!death_swap_m,distance=..128] run function death_swap_multi:mega/add_me

#après 50 ajouts (pour pas spam) ou plus car plusieurs ajoutés par tick
execute if score mega_added death_swap_main matches 50.. run function death_swap_multi:tellraw/mega_joined