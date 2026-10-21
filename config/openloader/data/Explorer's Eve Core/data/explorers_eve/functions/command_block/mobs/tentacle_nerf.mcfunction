#Nerf tentacles to have less health.
data modify entity @s Dormant set value 0
attribute @s minecraft:generic.max_health base set 30
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
scoreboard players set @s HealthLimit 15
tag @s add TentacleNerfed