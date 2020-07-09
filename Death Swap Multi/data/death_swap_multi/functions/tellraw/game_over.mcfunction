tellraw @a [{"translate":"[Death Swap]: "},{"selector":"@s"},{"translate":" lost"}]
tellraw @s [{"translate":"[Death Swap]: "},{"translate":"Try again","clickEvent":{"action":"run_command","value":"/trigger death_swap_t set 1"},"hoverEvent":{"action":"show_text","value":{"translate":"Click to join the game"}},"italic":true}]
function death_swap_multi:tellraw/remaining_players