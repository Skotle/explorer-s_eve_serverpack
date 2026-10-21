#Main manager for Command Block battle effects. These run as long as the block is loaded.
#Tag players close enough to count as being in the fight.
tag @a remove CommandBattling
execute positioned ~-35 64 ~-35 run tag @a[gamemode=!spectator,dx=70,dy=80,dz=69,predicate=explorers_eve:bowels] add CommandBattling

#As soon as the block is loaded, no mob spawns nearby.
execute unless entity @s[tag=BowelsOverridden] run function explorers_eve:command_block/bowels_override

#Get what phase the block is at.
execute store result score @s CommandPhase run data get entity @s BossfightManager.CurrentPhase

#Music progression.
execute if entity @s[scores={CommandPhase=1..5},tag=!Injury1] run function explorers_eve:command_block/injury_1
execute if entity @s[scores={CommandPhase=6..11},tag=!Injury2] run function explorers_eve:command_block/injury_2
execute if entity @s[scores={CommandPhase=12..},tag=!Injury3] run function explorers_eve:command_block/injury_3

#If the platform is rising, throw a fireball. DEBUG, don't do that actually.
#execute if score @s CommandPhase matches 2 run function explorers_eve:command_block/fireball
#execute if score @s CommandPhase matches 7 run function explorers_eve:command_block/fireball
#execute if score @s CommandPhase matches 13 run function explorers_eve:command_block/fireball

#This starts the fight.
execute if entity @s[tag=!CommandBattleActive,scores={CommandPhase=1..}] run function explorers_eve:command_block/activate

#Only run a lot of things if there's a non-Spectator battler in the arena.
execute if entity @s[tag=CommandBattleActive] if entity @a[tag=CommandBattling,distance=..128] run function explorers_eve:command_block/active

#Manage sealing/unsealing the arena.
execute if entity @s[tag=CommandBattleActive,tag=!ArenaSealed,scores={CommandWallWait=0}] if entity @a[tag=CommandBattling] run scoreboard players add @s CommandWallWait 1
execute if entity @s[tag=CommandBattleActive,tag=ArenaSealed,scores={CommandWallWait=0}] unless entity @a[tag=CommandBattling] run scoreboard players add @s CommandWallWait 3
execute if entity @s[scores={CommandWallWait=1..},tag=!ArenaSealed] run function explorers_eve:command_block/wall/set_timer
execute if entity @s[scores={CommandWallWait=1..},tag=ArenaSealed] run function explorers_eve:command_block/wall/clear_timer

#If no battlers are around, phase 16 repeats instantly when someone comes back.
execute if entity @s[tag=Phase16] unless entity @a[tag=CommandBattling,distance=..80] run scoreboard players set @s CommandPhase16Time 0

#No bombs!
execute as @e[type=#explorers_eve:bomb_distraction,distance=..300,tag=!DistractionChecked] at @s run function explorers_eve:item/bomb_defuse