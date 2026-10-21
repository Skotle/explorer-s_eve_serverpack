#Apply attributes.
attribute @s minecraft:generic.follow_range base set 200
data modify entity @s PortalCooldown set value 1000000

#Apply effects.
effect give @s resistance 3 5 true
effect give @s[type=!witherstormmod:sickened_creeper] fire_resistance 1000000 0 true

#No drops!
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

#They also get armor.
function explorers_eve:command_block/mobs/armor

#Less health in the Simulated Showdown.
execute if dimension explorers_eve:glitch run attribute @s minecraft:generic.max_health modifier add 1d56604f-3438-43cb-b818-ce31de8460d7 HealthLoss -0.67 multiply
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

#Mob-specific functions.
execute if entity @s[type=witherstormmod:sickened_skeleton] unless predicate explorers_eve:glitch run enchant @s punch 1
execute if entity @s[type=witherstormmod:sickened_skeleton] run enchant @s power 3
execute if entity @s[type=witherstormmod:sickened_pillager] run enchant @s quick_charge 2
execute if entity @s[type=witherstormmod:sickened_pillager] run enchant @s multishot
execute if entity @s[type=witherstormmod:sickened_zombie] run loot replace entity @s weapon.mainhand loot explorers_eve:bowels_zombie_weapons
execute if entity @s[type=witherstormmod:sickened_villager] run loot replace entity @s weapon.mainhand loot explorers_eve:bowels_zombie_weapons
execute if entity @s[type=witherstormmod:sickened_vindicator] run loot replace entity @s weapon.mainhand loot explorers_eve:bowels_vindicator_weapons
execute if entity @s[type=witherstormmod:sickened_phantom] run data modify entity @s Size set value 4
execute if entity @s[type=witherstormmod:sickened_iron_golem] run attribute @s minecraft:generic.attack_knockback modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 KnockbackBuff 2 add
execute if entity @s[type=witherstormmod:sickened_iron_golem] run attribute @s minecraft:generic.movement_speed modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusSpeed 0.05 add
execute if entity @s[type=witherstormmod:sickened_snow_golem] run function explorers_eve:command_block/mobs/snow_golem
execute if entity @s[type=witherstormmod:sickened_pig] run function explorers_eve:command_block/mobs/pig
execute if entity @s[type=witherstormmod:sickened_cow] run function explorers_eve:command_block/mobs/cow
execute if entity @s[type=witherstormmod:sickened_mushroom_cow] run function explorers_eve:command_block/mobs/cow
execute if entity @s[type=witherstormmod:sickened_chicken] run function explorers_eve:command_block/mobs/chicken
execute if entity @s[type=witherstormmod:sickened_cat] run function explorers_eve:command_block/mobs/cat
execute if entity @s[type=witherstormmod:sickened_wolf] run function explorers_eve:command_block/mobs/wolf
execute if entity @s[type=witherstormmod:sickened_bee] run function explorers_eve:command_block/mobs/bee
execute if entity @s[type=witherstormmod:sickened_parrot] run function explorers_eve:command_block/mobs/parrot

#If the mob gets a rider, give it effects too.
tag @s remove SickenedJockey
execute as @e[tag=SickenedJockey,distance=..5] at @s run function explorers_eve:final/mob_effects

#Sends the entity at a random angle.
scoreboard players set @s RandomRange 800
function explorers_eve:random
scoreboard players remove @s RandomValue 400
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 800
function explorers_eve:random
scoreboard players remove @s RandomValue 400
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

data modify entity @s Motion[1] set value 0.5d

#Fix tags.
tag @s remove SummonedMob
team join NoInfighting @s