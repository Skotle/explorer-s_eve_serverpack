#Try to find the surface and strike there.
execute if block ~ ~ ~ air align xyz run tp @s ~0.5 ~ ~0.5
execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function explorers_eve:final/attack/lightning/mark_up