#Clear those timers; probably won't cause issues.
scoreboard players set @s StormTeleportFailsafe 5
scoreboard players reset @s StormTeleportTime
scoreboard players reset @s StormTeleportSound
tag @e[tag=StormTeleportActive] remove StormTeleportActive