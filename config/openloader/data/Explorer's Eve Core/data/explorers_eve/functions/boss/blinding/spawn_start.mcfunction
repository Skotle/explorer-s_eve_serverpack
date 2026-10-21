#Tag markers.
playsound blue_skies:entity.summoner.prepare_summon hostile @a ~ ~ ~ 2 1
execute if entity @s[tag=FinalBattle] run summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["AlchemistMark"]}
tag @e[tag=AlchemistMark,distance=..40,limit=2,sort=nearest] add SpawnReady

#Reset the timer.
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s BlindingTime = @s RandomValue
scoreboard players add @s BlindingTime 15
execute if score @s Health matches ..100 run scoreboard players remove @s BlindingTime 5