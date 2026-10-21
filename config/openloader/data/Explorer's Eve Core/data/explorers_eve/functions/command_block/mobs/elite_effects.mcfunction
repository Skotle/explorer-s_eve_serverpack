#Apply attributes.
attribute @s minecraft:generic.follow_range base set 75
execute if dimension witherstormmod:bowels unless entity @w[tag=Resummoned] run attribute @s minecraft:generic.max_health modifier add 1542d04f-2161-41cb-b968-aa41de8930d7 HPLower -0.3 multiply
execute if dimension witherstormmod:bowels unless entity @w[tag=Resummoned] run attribute @s minecraft:generic.attack_damage modifier add 1542d04f-2161-41cb-b968-aa41cd7821c7 DamageLower -3 add

#Apply effects.
effect give @s resistance 3 5 true

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#Go flying from the Command Block!
function explorers_eve:command_block/launch_entity

#Fix tags.
tag @s add BowelsMob
tag @s add CommandMob
tag @s add CommandElite
#execute if dimension witherstormmod:bowels if entity @w[tag=Resummoned] run tag @s add BarrierSource
tag @s remove SummonedMob
team join NoInfighting @s