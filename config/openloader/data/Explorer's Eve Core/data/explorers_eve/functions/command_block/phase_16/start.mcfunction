#Effects run after stabbing both Wither Storm heads. Summons monsters and fireballs for extra mayhem.
tag @s add Phase16
tag @s[tag=!SpawnersBroken] add BarrierActive
data modify entity @s BossfightManager.CurrentPhase set value 16
scoreboard players set @s CommandPhase 16
execute unless entity @e[tag=CommandBlockTracker,distance=..30] run summon marker ~ ~ ~ {Tags:["CommandBlockTracker"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["CommandPhase16Summon"]}
execute as @e[tag=BowelsTentacle] run data modify entity @s Dormant set value 0

scoreboard players set @s CommandSpawnerCount 3
execute if entity @s[tag=Resummoned] run scoreboard players set @s CommandEntityTime 0
execute if entity @s[tag=Resummoned] run scoreboard players set @s CommandEliteCount 3
execute if entity @s[tag=Resummoned] run scoreboard players set @s CommandSpawnerCount 6
function explorers_eve:command_block/phase_16/summon

scoreboard players operation @s CommandPhase16Time = @s CommandPhase16Cap

function explorers_eve:command_block/end_check