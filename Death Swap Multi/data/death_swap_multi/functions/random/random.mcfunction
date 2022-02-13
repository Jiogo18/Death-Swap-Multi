kill @e[type=area_effect_cloud,tag=random_timeout]
execute at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Tags:["random_timeout"],CustomName:["Death Swap Random Area"]}
execute unless entity @p run scoreboard players operation random random_timeout = time_max random_timeout
execute as @e[type=area_effect_cloud,tag=random_timeout,limit=1] at @s run function death_swap_multi:random/make

scoreboard players operation timeout death_swap_main = random random_timeout