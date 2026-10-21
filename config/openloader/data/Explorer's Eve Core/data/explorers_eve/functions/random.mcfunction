#Generates a random value within the assigned ranges. Make sure to set the entity's RandomRange first!
summon area_effect_cloud ~ ~ ~ {Duration:0,Tags:["RandomValue"]} 
execute store result score @s RandomValue run data get entity @e[tag=RandomValue,limit=1,sort=nearest] UUID[0] 1
kill @e[tag=RandomValue]
scoreboard players operation @s RandomValue %= @s RandomRange