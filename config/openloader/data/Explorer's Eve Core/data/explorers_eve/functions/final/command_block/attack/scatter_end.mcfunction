#Back to normal.
tag @s remove ScatterActive
data modify entity @e[tag=CommandRide,limit=1,sort=nearest] NoAI set value 0b
kill @e[tag=RematchScatterSource,limit=1,sort=nearest]