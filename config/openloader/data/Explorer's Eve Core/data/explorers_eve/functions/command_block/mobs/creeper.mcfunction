#Creepers replace themselves so that they carry dragon fireballs.
summon dragon_fireball ~ ~ ~ {direction:[0.0,0.1,-1.0],power:[0.0,-0.1,0.0],CreatedBySymbiont:1b}
ride @e[type=minecraft:dragon_fireball,limit=1,sort=nearest] mount @s
data modify entity @s ExplosionRadius set value 3b
execute if entity @w[tag=Resummoned] run data modify entity @s ExplosionRadius set value 4b