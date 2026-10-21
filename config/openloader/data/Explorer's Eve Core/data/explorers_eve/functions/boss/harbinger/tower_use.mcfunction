#The player's used the tower now.
execute if score @s HarbingerTowerTime matches 100.. run scoreboard players set @s HarbingerTowerTime 200
tag @s add TowerUsed

execute if entity @e[type=cataclysm:the_harbinger,distance=..8] run scoreboard players set @e[tag=TowerOverload,scores={HarbingerTowerTime=100..}] HarbingerTowerTime 200
execute if entity @e[type=cataclysm:the_harbinger,distance=..8] run tag @e[tag=TowerOverload] add TowerUsed
scoreboard players remove @e[type=cataclysm:the_harbinger,distance=..8,scores={Health=51..},tag=!FinalBattle] Health 50
scoreboard players set @e[type=cataclysm:the_harbinger,distance=..8,scores={Health=1..25},tag=!FinalBattle] Health 25
execute as @e[type=cataclysm:the_harbinger,distance=..8,tag=!FinalBattle] store result entity @s Health float 1 run scoreboard players get @s Health