#Sends the invisible Endermite at a random-enough angle.
execute store result score @s MotionX run function explorers_eve:command_block/launch_direction
execute if entity @s[scores={MotionX=-75..75}] run tag @s add MotionLimit
execute store result score @s MotionZ run function explorers_eve:command_block/launch_direction
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s MotionX
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s MotionZ
data modify entity @s Motion[1] set value 1d
tag @s remove CommandLaunch