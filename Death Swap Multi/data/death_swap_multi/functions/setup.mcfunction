#config (as time_min) are only reseted if enabled=0 (at the first loading and not at the reset)

#from 10s to 300s (5 min) editable
scoreboard players set time_min random_timeout 200
scoreboard players set time_max random_timeout 6000

scoreboard players set setuped death_swap_m 1

function death_swap_multi:reset