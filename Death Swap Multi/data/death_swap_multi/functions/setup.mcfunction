#from 10s to 300s (5 min) editable
scoreboard players set time_min random_timeout 200
scoreboard players set time_max random_timeout 6000

#reset the datapack
scoreboard players reset * death_swap_main
scoreboard players set setuped death_swap_main 1
scoreboard players set timeout death_swap_main -1
scoreboard players set 20 death_swap_main 20

scoreboard players reset * death_swap_join
scoreboard players enable @a death_swap_join
scoreboard players reset * death_swap_id
scoreboard players set next_id death_swap_main 0
scoreboard players reset * death_swap_death
kill @e[type=area_effect_cloud,tag=death_swap_aec]
tag @e[tag=death_swap_entity_to_tp] remove death_swap_entity_to_tp
tag @e[tag=death_swap_m] remove death_swap_m