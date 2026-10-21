#Used to generate momentum for fireballs and mobs in the Command Block fight. If the limiter is engaged, loop this until the motion is high.
scoreboard players set @s RandomRange 60
function explorers_eve:random
scoreboard players remove @s RandomValue 30
execute if entity @s[tag=MotionLimit,scores={RandomValue=-10..10}] run function explorers_eve:boss/harbinger/crystal_aim_direction
scoreboard players get @s RandomValue