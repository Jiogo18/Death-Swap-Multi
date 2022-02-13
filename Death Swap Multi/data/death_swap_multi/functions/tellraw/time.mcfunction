scoreboard players operation timeoutS death_swap_main = timeout death_swap_main
scoreboard players operation timeoutS death_swap_main /= 20 death_swap_main
execute if score timeoutS death_swap_main matches 1.. run tellraw @a [{"translate":"Swap in","color":"red"}," ",{"score":{"name":"timeoutS","objective":"death_swap_main"}}]
execute if score timeoutS death_swap_main matches 1.. as @a[tag=death_swap_m] at @s run playsound minecraft:block.note_block.hat record @s
execute if score timeoutS death_swap_main matches 0 run tellraw @a [{"translate":"Swap!","color":"red"}]
scoreboard players reset timeoutS death_swap_main