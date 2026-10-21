#Phantoms are bigger and carry mobs.
data modify entity @s Size set value 2

scoreboard players set @s RandomRange 2
function explorers_eve:random

execute if score @s RandomValue matches 0 run summon witherstormmod:sickened_pillager ~ ~ ~ {Tags:["SickenedJockey"],HandItems:[{id:crossbow,Count:1b}]}
execute if score @s RandomValue matches 1 run summon witherstormmod:sickened_skeleton ~ ~ ~ {Tags:["SickenedJockey"],HandItems:[{id:bow,Count:1b}]}
ride @e[tag=SickenedJockey,limit=1,sort=nearest] mount @s