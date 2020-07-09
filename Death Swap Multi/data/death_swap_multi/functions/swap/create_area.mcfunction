#remove areas and _ma
kill @e[type=area_effect_cloud,tag=death_swap_ma]
tag @e[tag=death_swap_mas] remove death_swap_mas
tag @e[tag=death_swap_ma] remove death_swap_ma

#la duration est sur du random: normalement tout se passe en 1 tick mais il peut etre plus long
#(il y a 98% de chance que ça se passe en 4 ticks max)
#si c'est plus de 20 ticks alors les areas disparaissent et on abandonne le tp (relance le timer)
execute as @e[tag=death_swap_ms] at @s run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["death_swap_ma"],CustomName:["Death Swap Area"]}
execute as @e[tag=death_swap_ma] at @s run scoreboard players operation @s death_swap_id = @e[sort=nearest,limit=1,distance=..1] death_swap_id