#tp death_swap_msa (this, the player) to death_swap_msa (area_effect_cloud)
function death_swap_multi:swap/choose_area

execute at @e[tag=death_swap_mas,limit=1] run tp @s ~ ~ ~
kill @e[tag=death_swap_mas,limit=1,type=area_effect_cloud]
tag @s remove death_swap_ms
execute at @s run playsound minecraft:entity.enderman.teleport record @e
