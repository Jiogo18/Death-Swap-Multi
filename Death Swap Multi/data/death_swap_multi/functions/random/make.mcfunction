scoreboard players set random_max random_timeout 100

execute store result score xB random_timeout run data get entity @s Pos[0]
execute store result score zB random_timeout run data get entity @s Pos[2]
spreadplayers ~4.5 ~4.5 1 4.5 false @s
execute store result score x random_timeout run data get entity @s Pos[0]
execute store result score z random_timeout run data get entity @s Pos[2]
scoreboard players operation x random_timeout -= xB random_timeout
scoreboard players operation z random_timeout -= zB random_timeout
scoreboard players set random random_timeout 10
scoreboard players operation random random_timeout *= x random_timeout
scoreboard players operation random random_timeout += z random_timeout

scoreboard players operation random_plage random_timeout = time_max random_timeout
scoreboard players operation random_plage random_timeout -= time_min random_timeout
scoreboard players add random_plage random_timeout 1
scoreboard players operation random random_timeout *= random_plage random_timeout
scoreboard players operation random random_timeout /= random_max random_timeout
scoreboard players operation random random_timeout += time_min random_timeout
