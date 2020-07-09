tellraw @a[tag=death_swap_m] [{"translate":"[Death Swap]: "},{"translate":"The game has started"},". ",{"translate":"You are in the game"}]
tellraw @a[tag=!death_swap_m] [{"translate":"[Death Swap]: "},{"translate":"The game has started"},". ",{"translate":"Join the game","clickEvent":{"action":"run_command","value":"/trigger death_swap_t set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"Click to join the game"}},"italic":true}]
function death_swap_multi:tellraw/remaining_players
function death_swap_multi:tellraw/time