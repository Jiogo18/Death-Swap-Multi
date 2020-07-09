scoreboard players operation timeoutS death_swap_m = timeout death_swap_m
scoreboard players operation timeoutS death_swap_m /= second const
execute if score timeoutS death_swap_m matches 1.. run tellraw @a [{"translate":"Swap in","color":"red"}," ",{"score":{"name":"timeoutS","objective":"death_swap_m"}}]
execute if score timeoutS death_swap_m matches 1.. as @a[tag=death_swap_m] at @s run playsound minecraft:block.note_block.hat record @s
execute if score timeoutS death_swap_m matches 0 run tellraw @a [{"translate":"Swap!","color":"red"}]
