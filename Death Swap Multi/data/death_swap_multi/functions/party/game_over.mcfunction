scoreboard players reset @s death_swap_death

#pour pas de tellraw leave:
tag @s remove death_swap_m
scoreboard players reset @s death_swap_join
function death_swap_multi:party/leave

tellraw @a [{"translate":"[Death Swap]: "},{"selector":"@s"},{"translate":" lost"}]
tellraw @s [{"translate":"[Death Swap]: "},{"translate":"Try again","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger death_swap_join set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"Click to join the game"}},"italic":true}]
function death_swap_multi:tellraw/remaining_players