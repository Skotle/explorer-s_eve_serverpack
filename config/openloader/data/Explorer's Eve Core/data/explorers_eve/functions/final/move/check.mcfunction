#Make sure the marker is at the Storm's height.
execute store result entity @e[tag=FinalBossDestination,limit=1,sort=nearest] Pos[1] double 1 run data get entity @s Pos[1]
execute if entity @e[tag=FinalBossDestination,distance=..80] run function explorers_eve:final/move/end