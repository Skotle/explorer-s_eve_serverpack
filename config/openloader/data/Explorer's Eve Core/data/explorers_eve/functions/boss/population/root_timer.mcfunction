#Decrease the timer. At 0, add a tag.
scoreboard players remove @s StarlitRootTime 1
execute if score @s StarlitRootTime matches ..0 run tag @s add Move

#Make a line towards the target.
execute as @e[tag=NewAim,limit=1,sort=nearest,distance=..80] run function explorers_eve:boss/population/root_aim
execute facing entity @e[tag=StarlitRootAim,limit=1,sort=nearest] eyes rotated ~ 0 run function explorers_eve:boss/population/root_line