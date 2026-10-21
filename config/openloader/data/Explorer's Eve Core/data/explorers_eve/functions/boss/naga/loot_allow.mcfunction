#Set the loot table and stop checking.
execute unless predicate explorers_eve:glitch run data modify entity @s DeathLootTable set value "twilightforest:entities/naga"
tag @s remove NoLoot