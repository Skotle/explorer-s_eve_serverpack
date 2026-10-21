#Apply attributes.
attribute @s minecraft:generic.follow_range base set 75
attribute @s minecraft:generic.max_health modifier add 1d32a04f-3438-15cb-b968-aa41dd8830d7 FinalHealth 1 multiply
attribute @s minecraft:generic.attack_damage modifier add 1d32a04f-3438-15cb-b868-aa41dd8830d7 FinalDamage 10 add
attribute @s minecraft:generic.movement_speed modifier add 1d32a04f-3438-15cb-b868-aa41cd7730d7 FinalSpeed 0.1 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#Lich minions get weapons.
execute if entity @s[type=twilightforest:lich_minion] run loot replace entity @s weapon.mainhand loot explorers_eve:bowels_zombie_weapons

#Fix tag.
tag @s add CommandMinion
team join NoInfighting @s