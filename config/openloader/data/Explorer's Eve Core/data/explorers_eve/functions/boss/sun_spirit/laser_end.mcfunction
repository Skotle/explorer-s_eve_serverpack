#End the laser sequence.
tag @s remove LaserActive
scoreboard players reset @s SunSpiritLaserTime
kill @e[tag=LaserTarget,limit=1,sort=nearest]