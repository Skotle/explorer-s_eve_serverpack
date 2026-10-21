#Face the bomb, NOT the player.
scoreboard players set @s Math 3600
execute store result score @s StormRotation run data get entity @s YBodyRot 10
scoreboard players operation @s StormRotation %= @s Math
tp @s ~ ~ ~ facing entity @e[tag=AngerFocus,limit=1,sort=nearest]
execute store result score @s NewStormRotation run data get entity @s YBodyRot 10
scoreboard players add @s StormRotation 3600
scoreboard players add @s NewStormRotation 3600
scoreboard players operation @s NewStormRotation -= @s StormRotation
scoreboard players remove @s StormRotation 3600
execute if entity @s[scores={NewStormRotation=-200..200}] run tag @s add RotateSuccess
execute if entity @s[scores={NewStormRotation=-3800..-3400}] run tag @s add RotateSuccess
execute unless entity @s[tag=RotateSuccess] run execute store result entity @s YBodyRot double 0.1 run scoreboard players get @s StormRotation
execute unless entity @s[tag=RotateSuccess] run tp @s ~ ~ ~ ~ 0

#If rotating worked, do a dig.
execute if entity @s[tag=RotateSuccess] run tag @s add StormAttacking
execute if entity @s[tag=RotateSuccess] run function explorers_eve:storm/attack/dig/start
tag @s remove RotateSuccess