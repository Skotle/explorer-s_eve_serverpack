#Tower effects happen over time.
scoreboard players remove @s HarbingerTowerTime 1

#When the timer concludes, run effects.
execute if entity @s[tag=TowerWait] run function explorers_eve:boss/harbinger/tower_warn
execute if entity @s[tag=TowerFall] unless entity @e[tag=HarbingerTowerCluster,distance=..64] run function explorers_eve:boss/harbinger/tower_search
execute if entity @s[tag=TowerActive] run function explorers_eve:boss/harbinger/tower_active