#Replace the iceball with an identical fireball.
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","NewFireCrystal"]}
data modify entity @e[tag=NewFireCrystal,limit=1,sort=nearest] Motion set from entity @s Motion
data modify entity @e[tag=NewFireCrystal,limit=1,sort=nearest] XSpeed set from entity @s XSpeed
data modify entity @e[tag=NewFireCrystal,limit=1,sort=nearest] YSpeed set from entity @s YSpeed
data modify entity @e[tag=NewFireCrystal,limit=1,sort=nearest] ZSpeed set from entity @s ZSpeed
tag @e[tag=NewFireCrystal] remove NewFireCrystal
kill @s