#Used to generate momentum for fireballs and mobs in the Command Block fight. If the limiter is engaged, loop this until the motion is high.
scoreboard players set @s RandomRange 400
function explorers_eve:random
scoreboard players remove @s RandomValue 200
execute if entity @s[tag=MotionLimit,scores={RandomValue=-75..75}] run function explorers_eve:command_block/launch_direction
scoreboard players get @s RandomValue