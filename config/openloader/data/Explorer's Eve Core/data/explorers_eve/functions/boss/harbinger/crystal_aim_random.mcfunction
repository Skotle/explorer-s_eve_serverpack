#Sends the entity at a random angle with security to stop it from landing on the crystal.
execute store result score @s MotionX run function explorers_eve:boss/harbinger/crystal_aim_direction
execute if entity @s[scores={MotionX=-10..10}] run tag @s add MotionLimit
execute store result score @s MotionZ run function explorers_eve:boss/harbinger/crystal_aim_direction
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s MotionX
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s MotionZ


scoreboard players set @s RandomRange 20
function explorers_eve:random
scoreboard players add @s RandomValue 30
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s RandomValue

tag @s remove NewHowitzer
