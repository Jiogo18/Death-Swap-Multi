#toute entitée dans la partie mais trop loins (256 blocks = 16 chunks)
execute as @e[type=!player,tag=death_swap_mega] at @s unless entity @p[distance=..256] run function death_swap_multi:party/leave


#toute entitée non joueur proche d'un joueur (128 blocks = 8 chunks) qui est pas dans la partie
execute as @a at @s run tag @e[type=!player,tag=!death_swap_m,distance=..128] add death_swap_mega_n
tag @e[tag=death_swap_mega_n] add death_swap_mega

execute as @e[tag=death_swap_mega_n,type=!#death_swap_multi:mega_blacklist] run function death_swap_multi:party/join

execute as @e[tag=death_swap_mega_n,tag=death_swap_m] run scoreboard players add mega_added death_swap_m 1
#après 50 ajouts (pour pas spam) ou plus car plusieurs ajoutés par tick
execute if score mega_added death_swap_m matches 50.. run function death_swap_multi:tellraw/mega_joined

tag @e[tag=death_swap_mega_n] remove death_swap_mega_n
