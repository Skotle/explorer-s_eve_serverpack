#Animals are all jockeys. First, pick a random mob.
scoreboard players set @s RandomRange 10
function explorers_eve:random

execute if score @s RandomValue matches 0..2 run summon witherstormmod:sickened_zombie ~ ~ ~ {Tags:["SickenedJockey"]}
execute if score @s RandomValue matches 3..5 run summon witherstormmod:sickened_villager ~ ~ ~ {Tags:["SickenedJockey"]}
execute if score @s RandomValue matches 6..7 run summon witherstormmod:sickened_pillager ~ ~ ~ {Tags:["SickenedJockey"],HandItems:[{id:crossbow,Count:1b}]}
execute if score @s RandomValue matches 8..9 run summon witherstormmod:sickened_skeleton ~ ~ ~ {Tags:["SickenedJockey"],HandItems:[{id:bow,Count:1b}]}
ride @e[tag=SickenedJockey,limit=1,sort=nearest] mount @s