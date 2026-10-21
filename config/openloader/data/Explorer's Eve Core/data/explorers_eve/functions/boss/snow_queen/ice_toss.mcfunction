#Spawn several ice blocks to throw.
summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce"]}
summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce"]}
summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce"]}
summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce","Extreme"]}
execute if score @s Health matches ..100 run summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce"]}
execute if score @s Health matches ..100 run summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce","Extreme"]}
execute if score @s Health matches ..100 run summon twilightforest:thrown_ice ~ ~ ~ {Tags:["NewIce","Extreme"]}

execute as @e[tag=NewIce,distance=..5] run function explorers_eve:boss/snow_queen/ice_launch

#Reset the timer.
scoreboard players set @s RandomRange 10
function explorers_eve:random
scoreboard players operation @s IceFallTime = @s RandomValue
scoreboard players add @s IceFallTime 20