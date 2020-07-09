#this == _msa (a player)
function death_swap_multi:swap/choose_area

#si id !=
execute unless score @e[tag=death_swap_mas,limit=1] death_swap_id = @s death_swap_id run function death_swap_multi:swap/tp2mas
