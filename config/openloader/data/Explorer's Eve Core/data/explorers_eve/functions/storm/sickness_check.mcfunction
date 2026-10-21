#Check if the player is gaining Wither Sickness time, or if it's hit its cap. This shouldn't do anything if the Storm is too close. It's good for checking the underground, though.
execute store result score @s NewInfectionTime run data get entity @s ForgeCaps."witherstormmod:wither_sickness_tracker".ProximityTicks
execute unless score @s NewInfectionTime matches 0 if score @s NewInfectionTime >= @s InfectionTime run tag @e[scores={StormPhase=4..},limit=1,sort=nearest] add AttackReady
scoreboard players operation @s InfectionTime = @s NewInfectionTime