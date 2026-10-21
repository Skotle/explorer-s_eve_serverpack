#The Symbiont cannot despawn, is invincible, and attacks faster. The first one is the 'shield' Symbiont, which is mandatory to kill.
data modify entity @s IsRushMode set value 1
data modify entity @s PersistenceRequired set value 1
team join NoInfighting @s
tag @s add BowelsSymbiont
tag @s add RushMode
tag @e[tag=CommandBattleActive,limit=1,sort=nearest] remove NoSymbiont

#It's also permanently weakened, so melee attacks don't do anything.
attribute @s minecraft:generic.attack_damage base set 1

#And it's very speedy.
attribute @e[type=witherstormmod:withered_symbiont,limit=1] minecraft:generic.movement_speed modifier add 1d32104f-3438-41ab-b968-aa41de8930d7 BowelsSpeed 0.75 multiply

#If this is the first Symbiont, it puts a barrier on the Command Block.
execute if entity @e[type=witherstormmod:command_block,scores={CommandPhase=..10},distance=..128] run function explorers_eve:command_block/symbiont/barrier