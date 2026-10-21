#Tentacles get a whole mechanic, starting with lower max health and constant awakeness.
attribute @s minecraft:generic.max_health base set 40
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
data modify entity @s Dormant set value 0
data modify entity @s CanStrangle set value 0
scoreboard players set @s HealthLimit 25
tag @s add BowelsTentacle
team join NoInfighting @s