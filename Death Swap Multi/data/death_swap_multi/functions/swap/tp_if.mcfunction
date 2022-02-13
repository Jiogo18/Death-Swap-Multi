# this == _entity (a player)

# Select an aec => the target
tag @e[tag=death_swap_target] remove death_swap_target
tag @e[tag=death_swap_aec,sort=random,limit=1] add death_swap_target

# if id target != id source
execute unless score @e[tag=death_swap_target,limit=1] death_swap_id = @s death_swap_id run function death_swap_multi:swap/tp2target
