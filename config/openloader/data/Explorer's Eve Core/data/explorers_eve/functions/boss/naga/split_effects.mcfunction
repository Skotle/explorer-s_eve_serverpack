#A different version of the activation function.
data modify entity @s Home set from entity @e[type=twilightforest:naga,tag=Activated,limit=1,sort=nearest] Home
data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}] set from entity @e[type=twilightforest:naga,tag=Activated,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.max_health"}]
data modify entity @s Health set from entity @e[type=twilightforest:naga,tag=Activated,limit=1,sort=nearest] Health
execute store result score @s HealthLimit run data get entity @s Health
data modify entity @s DeathLootTable set value "minecraft:empty"
execute if predicate explorers_eve:glitch run tag @s add FinalBattle
tag @s remove NewNaga
