#Just in case of a failed portal spawn.
execute if block ~ ~ ~ air run tp @s ~ ~ ~
execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function explorers_eve:world/twilight_exit_move