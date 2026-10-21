#How many mobs to spawn?
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players set @s Math 6
scoreboard players operation @s Math += @s RandomValue
execute if entity @s[tag=Phase16] run scoreboard players add @s Math 2
execute if score @s CommandEntityCount matches 8.. run scoreboard players remove @s Math 1
execute if score @s CommandEntityCount matches 16.. run scoreboard players remove @s Math 2
execute if score @s CommandEntityCount matches 24.. run scoreboard players remove @s Math 2

#Then position the markers.
kill @e[tag=CommandMobMark,distance=..64]
fill ~10 129 ~10 ~-10 129 ~-11 barrier replace air
function explorers_eve:command_block/mobs/tainted_mark_spawn
execute if score @s CommandPhase matches 0..5 run tag @e[tag=CommandMobMark,distance=..64] add Tier1
execute if score @s CommandPhase matches 6..11 run tag @e[tag=CommandMobMark,distance=..64] add Tier2
execute if score @s CommandPhase matches 12..15 run tag @e[tag=CommandMobMark,distance=..64] add Tier3
execute if score @s CommandPhase matches 16 run tag @e[tag=CommandMobMark,distance=..64] add Tier4
function explorers_eve:command_block/mobs/tainted_mark_spread
fill ~10 129 ~10 ~-10 129 ~-11 air replace barrier