#Constantly face the player, make particles, and fire wither skulls in rapid succession after a delay.
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] eyes
particle minecraft:large_smoke ~ ~ ~ 0.5 1 0.5 0 5 force
scoreboard players remove @s CommandSkullTime 1
execute if score @s CommandSkullTime matches 8 run function explorers_eve:final/command_block/attack/skull_burst_shoot
execute if score @s CommandSkullTime matches 6 run function explorers_eve:final/command_block/attack/skull_burst_shoot
execute if score @s CommandSkullTime matches 4 run function explorers_eve:final/command_block/attack/skull_burst_shoot
execute if score @s CommandSkullTime matches 2 run function explorers_eve:final/command_block/attack/skull_burst_shoot
execute if score @s CommandSkullTime matches 0 run function explorers_eve:final/command_block/attack/skull_burst_shoot
execute if score @s CommandSkullTime matches ..-1 run scoreboard players set @s CommandSkullTime 25