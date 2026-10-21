#Generate a new cap for the teleporting timer.
scoreboard players set @s StormTeleportCap 40000
scoreboard players set @s RandomRange 20000
function explorers_eve:random
scoreboard players operation @s StormTeleportCap += @s RandomValue