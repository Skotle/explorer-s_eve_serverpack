#Set up markers to lift clusters.
tag @s add FinalBossAttacking
tag @s add QuakeActive
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 5
tag @p[gamemode=!spectator,tag=FinalBattling,tag=!InBeam,distance=..250] add FinalBossTarget
execute at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/quake/spawn_mark
execute at @p[tag=FinalBossTarget] run spreadplayers ~ ~ 6 15 false @e[tag=QuakeMark]
tag @a remove FinalBossTarget