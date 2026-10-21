#Apply attributes.
#attribute @s minecraft:generic.follow_range base set 75

#Apply effects.
effect give @s witherstormmod:wither_sickness 1000000 3
effect give @s wither 9000

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#When the Wither Storm is resummoned, all mobs get additional random armor.
execute if entity @w[tag=Resummoned] run function explorers_eve:command_block/mobs/armor

#Fix tags.
tag @s add CommandMob
tag @s remove SummonedMob
team join NoInfighting @s