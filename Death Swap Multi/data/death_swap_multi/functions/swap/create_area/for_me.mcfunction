tag @e[tag=death_swap_aec_new] remove death_swap_aec_new
summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["death_swap_aec","death_swap_aec_new"],CustomName:["Death Swap Area"]}
scoreboard players operation @e[type=area_effect_cloud,tag=death_swap_aec_new,sort=nearest,distance=..1,limit=1] death_swap_id = @s death_swap_id
tag @e[tag=death_swap_aec_new] remove death_swap_aec_new