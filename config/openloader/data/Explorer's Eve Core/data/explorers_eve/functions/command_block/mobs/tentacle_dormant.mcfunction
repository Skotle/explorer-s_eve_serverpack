#Lower the HealthLimit to allow killing them eventually and make them dormant again for now.
scoreboard players remove @s HealthLimit 5
execute unless entity @w[tag=Resummoned] run scoreboard players remove @s HealthLimit 5
execute store result entity @s Health float 2 run scoreboard players get @s HealthLimit
data modify entity @s Dormant set value 1
particle minecraft:large_smoke ~ ~3 ~ 2 2 2 0.05 100 force