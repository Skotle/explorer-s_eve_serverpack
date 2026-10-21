#Move forward slowly until the wall is found.
execute unless block ~ ~ ~ air run tp @s ~ ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function explorers_eve:storm/attack/uproot/find_start