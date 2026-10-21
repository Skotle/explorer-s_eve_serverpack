#Clears nearby markers so fireballs don't summon when it rises and sets up important tags. Also, forceload is here too as a failsafe.
execute as @e[type=witherstormmod:tentacle,tag=!BowelsTentacle,distance=..100] at @s if dimension witherstormmod:bowels run function explorers_eve:command_block/mobs/tentacle
execute in witherstormmod:bowels run forceload add 0 0 0 0
tag @s add CommandBattleActive
tag @s add NoSymbiont
execute if entity @w[tag=Resummoned] run tag @s add Resummoned
tag @e[type=witherstormmod:wither_storm_head,limit=2,sort=nearest] add Phase16Head
team join NoInfighting @e[tag=Phase16Head]
scoreboard players set @s CommandPhase16Cap 60
scoreboard players set @s CommandSkullWait 25
scoreboard players set @s CommandWallWait 0
execute as @w[tag=BowelsReady,tag=Injured] at @s run function explorers_eve:storm/injury/end
tag @w[tag=BowelsReady] add CommandBlockHurt
execute unless entity @w[tag=CommandBlockHurt] run tag @w add CommandBlockHurt
execute as @w[tag=CommandBlockHurt] run data modify entity @s ShouldShowHole set value 1b
witherstormmod config server set server.misc.shouldShowHole true
witherstormmod config server set server.withered_symbiont.canSummonSymbiont false
witherstormmod config server set server.ultimate_target_logic.random_strolling.randomStrollingWhenTargetHidden false