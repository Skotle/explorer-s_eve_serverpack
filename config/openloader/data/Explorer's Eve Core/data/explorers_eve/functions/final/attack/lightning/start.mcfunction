#Set up markers to lift clusters.
tag @s add LightningActive
scoreboard players set @s RandomRange 4
function explorers_eve:random
execute if entity @s[tag=!ScattershotPossible] run scoreboard players remove @s RandomValue 2
scoreboard players set @s Math 0
execute if entity @s[scores={RandomValue=..1}] at @p[tag=FinalBossTarget] rotated ~ 0 run function explorers_eve:final/attack/lightning/mark_circle
execute if entity @s[scores={RandomValue=2..}] at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/lightning/mark_spread
execute as @e[tag=LightningMark,distance=..400] at @s run function explorers_eve:final/attack/lightning/mark_set
playsound witherstormmod:bowels_loud_hurt hostile @a[distance=..300] ~ ~ ~ 1 1.5 1
tag @a remove FinalBossTarget