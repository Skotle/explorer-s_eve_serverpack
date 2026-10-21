#The Warden emerges from under the player.
execute at @p[gamemode=!spectator,distance=..200] run spreadplayers ~ ~ 0 2 false @s

#Hopefully make it emerge from the ground.
data merge entity @s {Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:100L}}}}

#Bring the Command Block, too!
execute as @e[type=witherstormmod:command_block,limit=1,sort=nearest] run function explorers_eve:final/command_block/surface_teleport

#And don't forget tags!
tag @s add WardenEmerging
scoreboard players set @s WardenEmergeTime 130