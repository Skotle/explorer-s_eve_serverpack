#Just in case of a failed portal spawn.
execute unless dimension witherstormmod:bowels unless block ~ ~1 ~ air positioned ~ ~1 ~ run function explorers_eve:world/twilight_exit_move
execute unless dimension witherstormmod:bowels at @s run spawnpoint @s ~ ~ ~ ~
effect give @s resistance 5 3 true
execute if entity @s[tag=FirstTwilightLeft] at @s if dimension minecraft:overworld run function explorers_eve:music/progress/overworld
tag @s remove FirstTwilightLeft
tag @s remove TwilightLeft