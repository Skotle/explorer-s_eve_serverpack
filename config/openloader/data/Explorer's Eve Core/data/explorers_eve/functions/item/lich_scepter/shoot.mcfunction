#Spawn a bolt of some kind.
scoreboard players set @s LichBoltCooldown 5

scoreboard players set @s RandomRange 5
function explorers_eve:random
execute if score @s RandomValue matches 0 run summon twilightforest:lich_bomb ~ ~1.5 ~ {Tags:["NewBolt"]}
execute if score @s RandomValue matches 1.. run summon twilightforest:wand_bolt ~ ~1.5 ~ {Tags:["NewBolt"]}

tag @s add LichScepterShot
execute as @e[tag=NewBolt,limit=1,sort=nearest] at @s run function explorers_eve:item/lich_scepter/aim
tag @s remove LichScepterShot

#Test how many shields are left. If none, no more Lich Scepter!
execute store result score @s Math run data get entity @s ForgeCaps."twilightforest:cap_shield".tempshields
execute unless score @s Math matches 1.. run function explorers_eve:item/lich_scepter/end