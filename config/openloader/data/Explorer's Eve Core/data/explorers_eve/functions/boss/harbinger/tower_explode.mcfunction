#Make a crater and drop a tower.
summon lightning_bolt
summon fireball ~ ~ ~ {ExplosionPower:4b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:coal_block",Count:1b}}

place template explorers_eve:harbinger_emp ~-2 ~48 ~-2
witherstormmod cluster create ~-2 ~48 ~-2 ~2 ~57 ~2 1
execute positioned ~ ~50 ~ run tag @e[type=witherstormmod:block_cluster,limit=1,sort=nearest] add HarbingerTowerCluster

tag @s remove TowerWait
tag @s add TowerFall
scoreboard players set @s HarbingerTowerTime 75
execute positioned over motion_blocking align xyz run tp @s ~0.5 ~-6 ~0.5