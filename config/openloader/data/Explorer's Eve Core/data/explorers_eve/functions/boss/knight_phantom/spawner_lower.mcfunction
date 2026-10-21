#Place the spawner on the floor, if possible.
execute unless block ~ ~ ~ #explorers_eve:air_like unless block ~ ~1 ~ #explorers_eve:air_like run function explorers_eve:boss/knight_phantom/spawner_set
execute unless block ~ ~ ~ #explorers_eve:air_like if block ~ ~1 ~ #explorers_eve:air_like positioned ~ ~1 ~ run function explorers_eve:boss/knight_phantom/spawner_set
execute if block ~ ~ ~ #explorers_eve:air_like positioned ~ ~-1 ~ run function explorers_eve:boss/knight_phantom/spawner_lower