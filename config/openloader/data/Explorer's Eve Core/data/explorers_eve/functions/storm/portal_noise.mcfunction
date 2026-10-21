#The marker sometimes plays sound when the Storm is nearby.
execute if block ~ ~ ~ minecraft:nether_portal run scoreboard players add @s RandomValue 1
execute if score @s RandomValue matches 30.. run playsound witherstormmod:wither_storm_ambient hostile @a[distance=..16] ~2 ~ ~ 0.15 0.9 0.05
execute if score @s RandomValue matches 30.. run function explorers_eve:random