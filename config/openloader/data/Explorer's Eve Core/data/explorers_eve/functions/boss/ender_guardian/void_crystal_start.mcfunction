#Rotate the crystals and give warning.
execute as @e[tag=VoidSpikeSource,distance=..64] at @s run function explorers_eve:boss/ender_guardian/void_crystal_aim

#Oh, and start a new delay.
scoreboard players set @s RandomRange 100
execute if entity @s[scores={Health=..75}] run scoreboard players remove @s RandomRange 95
function explorers_eve:random
scoreboard players operation @s EnderGuardianTime = @s RandomValue
scoreboard players add @s EnderGuardianTime 260
execute if entity @s[scores={Health=..175}] run scoreboard players remove @s EnderGuardianTime 60