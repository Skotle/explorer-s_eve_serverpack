#Count how many guards exist and decide whether or not to spawn more.
execute store result score @s GhastMinionCount run execute if entity @e[tag=SupportGhastguard,distance=..48]
execute if entity @s[tag=Phase1] run scoreboard players add @s GhastMinionCount 1
execute if entity @s[tag=Phase2] run scoreboard players remove @s GhastMinionCount 4
execute if entity @s[tag=Phase3] run scoreboard players remove @s GhastMinionCount 12
execute if entity @s[tag=Phase4] run scoreboard players remove @s GhastMinionCount 8
execute if entity @s[tag=Phase5] run scoreboard players remove @s GhastMinionCount 2
execute if entity @s[tag=FinalBattle] run scoreboard players remove @s GhastMinionCount 12
execute if score @s GhastMinionCount matches ..0 unless entity @e[tag=TrapUsed,distance=..8] run summon twilightforest:carminite_ghastguard ~ ~14 ~ {Health:6,Tags:["SupportGhastguard"],DeathLootTable:"minecraft:empty"}

scoreboard players set @s GhastMinionTime 200