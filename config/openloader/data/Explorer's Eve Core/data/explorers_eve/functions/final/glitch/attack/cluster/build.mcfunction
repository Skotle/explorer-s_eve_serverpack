#Summon a cluster.
scoreboard players set @s RandomRange 6
function explorers_eve:random

execute if score @s RandomValue matches 0 run fill ~ ~ ~ ~8 ~1 ~8 aether:blue_aercloud
execute if score @s RandomValue matches 1 run fill ~ ~ ~ ~8 ~1 ~8 deep_aether:sterling_aercloud
execute if score @s RandomValue matches 2 run fill ~ ~ ~ ~8 ~1 ~8 deep_aether:aersmog
execute if score @s RandomValue matches 3 run fill ~ ~ ~ ~8 ~1 ~8 twilightforest:hedge
execute if score @s RandomValue matches 4 run fill ~ ~ ~ ~3 ~3 ~3 tnt[unstable=true]
execute if score @s RandomValue matches 5 run fill ~ ~ ~ ~3 ~3 ~3 powder_snow

execute if score @s RandomValue matches 0..3 run witherstormmod cluster create ~ ~ ~ ~8 ~1 ~8 0 {RotationDelta:{x:4,y:4},ShakeTime:0,NoGravity:1b,Tags:["ClusterSpin","NewCluster"]}
execute if score @s RandomValue matches 4..5 run witherstormmod cluster create ~ ~ ~ ~3 ~3 ~3 0 {RotationDelta:{x:4,y:4},ShakeTime:0,NoGravity:1b,Tags:["ClusterSpin","NewCluster"]}

#Tag it appropriately.
execute if entity @e[tag=Cluster3,distance=..20] run tag @e[tag=NewCluster,limit=1,sort=nearest] add Cluster4
execute unless entity @e[tag=Cluster3,distance=..20] if entity @e[tag=Cluster2,distance=..20] run tag @e[tag=NewCluster,limit=1,sort=nearest] add Cluster3
execute unless entity @e[tag=Cluster2,distance=..20] if entity @e[tag=Cluster1,distance=..20] run tag @e[tag=NewCluster,limit=1,sort=nearest] add Cluster2
execute unless entity @e[tag=Cluster1,distance=..20] run tag @e[tag=NewCluster,limit=1,sort=nearest] add Cluster1
tag @e[tag=NewCluster] remove NewCluster

playsound witherstormmod:block_cluster_shake hostile @a[distance=..80] ~ ~ ~ 4 1 1

#Once they all spawn, no more.
execute if entity @e[tag=Cluster4,distance=..20] run tag @s add ClustersBuilt
scoreboard players set @s GlitchAttackTime 0