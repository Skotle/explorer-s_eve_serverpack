#Start tracking the fireball.
tag @s add FireTracked
summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["FireTracker","NewFireTracker"]}
execute store result score @s UUID run data get entity @s UUID[0]
scoreboard players operation @e[tag=NewFireTracker] UUID = @s UUID
tag @e remove NewFireTracker