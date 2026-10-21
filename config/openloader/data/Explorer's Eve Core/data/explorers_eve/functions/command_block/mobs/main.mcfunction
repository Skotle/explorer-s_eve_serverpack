#Again, a central manager for buffing mobs.
execute if entity @s[type=witherstormmod:sickened_zombie] run function explorers_eve:command_block/mobs/zombie
execute if entity @s[type=witherstormmod:sickened_villager] run function explorers_eve:command_block/mobs/zombie
execute if entity @s[type=witherstormmod:sickened_spider] run function explorers_eve:command_block/mobs/spider
execute if entity @s[type=witherstormmod:sickened_skeleton] run function explorers_eve:command_block/mobs/skeleton
execute if entity @s[type=witherstormmod:sickened_creeper] run function explorers_eve:command_block/mobs/creeper
execute if entity @s[type=witherstormmod:sickened_phantom] if entity @w[tag=Resummoned] run function explorers_eve:command_block/mobs/phantom
execute if entity @s[type=witherstormmod:sickened_pillager] run function explorers_eve:command_block/mobs/pillager
execute if entity @s[type=witherstormmod:sickened_vindicator] run function explorers_eve:command_block/mobs/vindicator
execute if entity @s[type=witherstormmod:sickened_iron_golem] if entity @w[tag=Resummoned] run function explorers_eve:command_block/mobs/iron_golem
execute if entity @s[type=witherstormmod:sickened_snow_golem] run function explorers_eve:command_block/mobs/snow_golem
execute if entity @s[type=witherstormmod:sickened_chicken] run function explorers_eve:command_block/mobs/chicken
execute if entity @s[type=witherstormmod:sickened_pig] run function explorers_eve:command_block/mobs/pig
execute if entity @s[type=witherstormmod:sickened_cow] run function explorers_eve:command_block/mobs/cow
execute if entity @s[type=witherstormmod:sickened_mushroom_cow] run function explorers_eve:command_block/mobs/cow
execute if entity @s[type=witherstormmod:sickened_bee] run function explorers_eve:command_block/mobs/bee
execute if entity @s[type=witherstormmod:sickened_cat] run function explorers_eve:command_block/mobs/cat
execute if entity @s[type=witherstormmod:sickened_wolf] run function explorers_eve:command_block/mobs/wolf
execute if entity @s[type=witherstormmod:sickened_parrot] run function explorers_eve:command_block/mobs/parrot

#Buffs common to all mobs.
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b}
execute unless entity @s[tag=ApocalypseMob] run data modify entity @s DeathLootTable set value "minecraft:empty"
#attribute @s minecraft:generic.follow_range base set 75
#effect give @s slow_falling 2 0 true
tag @s add BowelsMob
execute unless biome ~ ~ ~ witherstormmod:bowels unless entity @s[tag=ApocalypseMob] run tag @s add CommandMob
tag @s remove SickenedJockey
team join NoInfighting @s

#There's a small chance that a given mob will drop Thaumic Paper. This is here to prevent messing with too many random loot tables.
scoreboard players set @s RandomRange 100
function explorers_eve:random
execute if entity @s[tag=ApocalypseMob] run scoreboard players set @s RandomValue -1
execute if score @s RandomValue matches 0 run data modify entity @s DeathLootTable set value "explorers_eve:thaumic_paper"

#When the Wither Storm is resummoned, all mobs get additional random armor.
execute if entity @w[tag=Resummoned] run function explorers_eve:command_block/mobs/armor
tag @s remove ApocalypseMob