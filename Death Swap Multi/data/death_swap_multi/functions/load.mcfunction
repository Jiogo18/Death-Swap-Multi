#est executé au chargement du monde (donc pas de reset)

scoreboard objectives add death_swap_t trigger
scoreboard objectives add death_swap_m dummy
scoreboard objectives add death_swap_id dummy
scoreboard objectives add random_timeout dummy
scoreboard objectives add death_swap_death deathCount

scoreboard objectives add const dummy
scoreboard players set second const 20
scoreboard players set 1 const 1

execute unless score setuped death_swap_m matches 1 run function death_swap_multi:setup


tellraw @a {"text":"  [ Death Swap Multi - By Jiogo18 ]   ","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function death_swap_multi:reset"},"hoverEvent":{"action":"show_text","value":{"translate":"Click to reset the datapack"}}}

function death_swap_multi:tellraw/start_game
