#Count how many blocks are between the Storm and the player.
execute unless block ~ ~ ~ #explorers_eve:distance_measure_ignore run scoreboard players add @s BlockCount 1
execute unless entity @a[gamemode=!spectator,distance=..3] unless score @s BlockCount matches 8.. positioned ^ ^ ^1 run function explorers_eve:storm/blocks_to_player