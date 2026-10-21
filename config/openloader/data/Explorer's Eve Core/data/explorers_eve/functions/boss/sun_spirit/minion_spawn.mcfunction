#Pick a random minion. Adding switches the rare spawn from Wither Skeletons to Fire Minions.
scoreboard players set @s RandomRange 8
function explorers_eve:random

execute if score @s Health matches ..20 run scoreboard players add @s RandomValue 2

execute if score @s RandomValue matches 0..1 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["NewMinion"],HandItems:[{id:"aether:holystone_sword",Count:1b},{}]}
execute if score @s RandomValue matches 2..4 run summon minecraft:magma_cube ~ ~ ~ {Tags:["NewMinion"],Size:1,Health:15}
execute if score @s RandomValue matches 5..7 run summon minecraft:blaze ~ ~ ~ {Tags:["NewMinion"]}
execute if score @s RandomValue matches 8..9 run summon aether:fire_minion ~ ~ ~ {Tags:["NewMinion"]}

execute as @e[tag=NewMinion] at @s run function explorers_eve:boss/sun_spirit/minion_effects