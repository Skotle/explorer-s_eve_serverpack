#Animals are all jockeys. First, pick a random mob.
scoreboard players set @s RandomRange 10
function explorers_eve:random

execute if score @s RandomValue matches 0..4 run summon witherstormmod:sickened_zombie ~ ~ ~ {Tags:["SickenedJockey"],IsBaby:1b}
execute if score @s RandomValue matches 5..9 run summon witherstormmod:sickened_villager ~ ~ ~ {Tags:["SickenedJockey"],IsBaby:1b}
ride @e[tag=SickenedJockey,limit=1,sort=nearest] mount @s