#Spawn loot every 8 ticks.
scoreboard players add @s Math 1
execute if score @s Math matches 8.. run function explorers_eve:symbiont/loot_spawn

#Sometimes, launch a block!
scoreboard players add @s SymbiontBlockTime 1
execute if score @s SymbiontBlockTime matches 19 run function explorers_eve:symbiont/loot_block

#After 321 ticks, end.
scoreboard players add @s SymbiontLootTime 1
execute if score @s SymbiontLootTime matches 310.. run function explorers_eve:symbiont/loot_end