#Fancy effects!
particle twilightforest:large_flame ~ ~ ~ 0.5 0.5 0.5 0.01 1
particle minecraft:block twilightforest:towerwood ~ ~3 ~ 2 1.5 2 0.1 30
execute if entity @s[tag=West] run particle minecraft:block twilightforest:towerwood ~8 ~1 ~ 1.5 1.5 1 0.1 20
execute if entity @s[tag=East] run particle minecraft:block twilightforest:towerwood ~-8 ~1 ~ 1.5 1.5 1 0.1 20
execute if entity @s[tag=North] run particle minecraft:block twilightforest:towerwood ~ ~1 ~8 1 1.5 1.5 0.1 20
execute if entity @s[tag=South] run particle minecraft:block twilightforest:towerwood ~ ~1 ~-8 1 1.5 1.5 0.1 20