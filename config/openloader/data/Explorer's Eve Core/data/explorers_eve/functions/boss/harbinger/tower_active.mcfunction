#Occasionally attack a player.
scoreboard players remove @s[tag=!TowerOverload] HarbingerMissileTime 1
execute if score @s HarbingerMissileTime matches ..-1 at @e[tag=EMPCrystal,limit=1,sort=nearest,distance=..10] run function explorers_eve:boss/harbinger/crystal_attack

#Constantly check if any crystals are alive. If they're all gone, become available.
execute unless entity @s[tag=TowerOverload] unless entity @e[tag=EMPCrystal,distance=..128] run function explorers_eve:boss/harbinger/tower_overload

#Make particles while the button is usable!
execute if entity @s[tag=TowerOverload,tag=!TowerUsed] run particle cataclysm:lightning ~ ~ ~ 0 0 0 0.5 2
execute if entity @s[tag=TowerOverload,tag=!TowerUsed] run particle cataclysm:lightning ~ ~ ~ 0 0 0 1 2

#Once the button's pushed, do stuff.
execute if entity @s[tag=TowerOverload,tag=!TowerUsed] if block ~ ~ ~ cataclysm:emp[overload=true] run function explorers_eve:boss/harbinger/tower_use

#Make warning particles if the tower's about to blow!
execute if score @s HarbingerTowerTime matches ..100 run particle dust 1 0 0 2 ~ ~ ~ 1 2 1 0 7

#Destroy the tower after enough time has passed.
execute if score @s HarbingerTowerTime matches ..-1 run function explorers_eve:boss/harbinger/tower_destroy