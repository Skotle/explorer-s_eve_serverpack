#All heads are wounded now.
function explorers_eve:final/injury_major
execute unless entity @s[tag=Phase1] run data modify entity @s Invulnerable set value 1b
execute unless entity @s[tag=Phase1] run tag @s remove FinalBossVulnerable
execute if data storage world FinalBossCheckpoint4 run data modify entity @s Invulnerable set value 1b
execute if data storage world FinalBossCheckpoint4 run tag @s remove FinalBossVulnerable
tag @s remove FinalBossActive
tag @s remove Head0Injured
tag @s remove Head1Injured
tag @s remove Head2Injured
scoreboard players set @s InjuryDelay 7
execute if entity @s[tag=Phase1] run scoreboard players add @s InjuryDelay 9