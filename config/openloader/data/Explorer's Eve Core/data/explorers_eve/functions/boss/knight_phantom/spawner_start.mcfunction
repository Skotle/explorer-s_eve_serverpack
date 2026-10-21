#Reset the timer.
scoreboard players set @s RandomRange 75
function explorers_eve:random
scoreboard players operation @s PhantomTime = @s RandomValue
scoreboard players add @s PhantomTime 150

#Place a marker.
summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["PhantomSpawnerMark"]}
execute as @e[tag=PhantomSpawnerMark,limit=1,sort=nearest] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function explorers_eve:boss/knight_phantom/spawner_lower