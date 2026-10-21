#Spawn a marker, and repeat until the scoreboard runs out.
summon area_effect_cloud ~ ~ ~ {Tags:["GhastLightningMark"],Duration:200}
scoreboard players remove @s Math 1
execute if entity @s[scores={Math=1..}] run function explorers_eve:boss/ur_ghast/lightning_mark_spawn
