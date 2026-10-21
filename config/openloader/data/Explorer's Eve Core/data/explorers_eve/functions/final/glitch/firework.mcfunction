#Spawn a firework.
summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,Silent:1,Tags:["NewFirework"],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4}]}}}}

#Make a random color for it to use.
scoreboard players set @s RandomRange 6
function explorers_eve:random

execute if score @s RandomValue matches 0 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16711680]}]}}}}
execute if score @s RandomValue matches 1 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16776960]}]}}}}
execute if score @s RandomValue matches 2 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;1048320]}]}}}}
execute if score @s RandomValue matches 3 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;65535]}]}}}}
execute if score @s RandomValue matches 4 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;255]}]}}}}
execute if score @s RandomValue matches 5 run data merge entity @e[tag=NewFirework,limit=1,sort=nearest] {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16711935]}]}}}}
tag @e remove NewFirework