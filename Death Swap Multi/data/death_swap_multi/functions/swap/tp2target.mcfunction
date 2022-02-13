#tp death_swap_entity_to_tp (this, the entity) to death_swap_target (area_effect_cloud)

execute at @e[tag=death_swap_target,limit=1] run tp @s ~ ~ ~
kill @e[tag=death_swap_target,limit=1,type=area_effect_cloud]
tag @s remove death_swap_entity_to_tp
execute at @s as @a[distance=..20] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.25
