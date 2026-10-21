#Find the ceiling and spawn the icicles right below, unless there's no ceiling.
scoreboard players add @s Math 1
execute unless score @s Math matches 16.. if block ~ ~1 ~ #explorers_eve:snow_queen_air_like positioned ~ ~1 ~ run function explorers_eve:boss/snow_queen/icicle_raise
execute unless score @s Math matches 16.. unless block ~ ~1 ~ #explorers_eve:snow_queen_air_like run function explorers_eve:boss/snow_queen/icicle_spawn
execute if score @s Math matches 16.. run function explorers_eve:boss/snow_queen/icicle_spawn