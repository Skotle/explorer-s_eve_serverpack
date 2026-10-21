#First, spawn the structure again if it somehow broke the first time.
execute unless block ~ ~ ~ cataclysm:emp run place template explorers_eve:harbinger_emp ~-2 ~-2 ~-2

#Spawn the crystal.
summon end_crystal ~ ~7 ~ {Tags:["EMPCrystal"],ShowBottom:0b}

#Effects!
playsound cataclysm:emp_activated hostile @a ~ ~ ~ 2 0.75
playsound witherstormmod:block_cluster_shake block @a ~ ~ ~ 3 1

#Tags.
tag @s remove TowerFall
tag @s add TowerActive
scoreboard players set @s HarbingerTowerTime 800
tp @s ~ ~ ~