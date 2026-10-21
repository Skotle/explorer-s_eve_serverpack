#Keep shuffling the corpse until it's on solid ground.
execute unless entity @e[tag=EndCorpseMark,predicate=explorers_eve:end] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EndCorpseMark"]}
spreadplayers 0 0 10 32 false @e[tag=EndCorpseMark]
execute at @e[tag=EndCorpseMark,limit=1,sort=nearest] if block ~ ~-1 ~ end_stone run tp @s @e[tag=EndCorpseMark,limit=1,sort=nearest]
execute at @e[tag=EndCorpseMark,limit=1,sort=nearest] unless block ~ ~-1 ~ end_stone run kill @e[tag=EndCorpseMark,limit=1,sort=nearest]
execute unless entity @e[tag=EndCorpseMark,predicate=explorers_eve:end] run function explorers_eve:world/end_corpse_move