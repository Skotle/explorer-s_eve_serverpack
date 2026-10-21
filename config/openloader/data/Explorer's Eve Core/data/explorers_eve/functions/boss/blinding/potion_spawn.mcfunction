#Tag markers.
playsound blue_skies:entity.alchemist.prepare_potions hostile @a ~ ~ ~ 2 1
execute if entity @s[tag=FinalBattle] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["SummonerMark"]}
execute if entity @s[tag=FinalBattle] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["SummonerMark"]}
execute if entity @s[tag=FinalBattle] run summon area_effect_cloud ~ ~ ~ {Duration:10,Tags:["SummonerMark"]}
execute if entity @s[tag=FinalBattle] run spreadplayers ~ ~ 4 20 false @e[tag=SummonerMark,distance=..1]
execute at @e[tag=SummonerMark,distance=..40] run summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:160,Effects:[{Id:27,Amplifier:0b,Duration:20}]}
execute if entity @s[tag=FinalBattle] run kill @e[tag=SummonerMark,distance=..160]

#Reset the timer.
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s BlindingTime = @s RandomValue
scoreboard players add @s BlindingTime 10