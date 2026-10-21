#Prepare marks.
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}
summon area_effect_cloud ~ ~ ~ {Duration:700,Tags:["ThornMark"]}

execute at @r[tag=FinalBattling,distance=..200] run spreadplayers ~ ~ 3 16 false @e[tag=ThornMark,tag=!ThornsPlaced]
playsound twilightforest:block.twilightforest.beanstalk.grow hostile @a[predicate=explorers_eve:glitch,distance=..200] ~ ~ ~ 1 1.5 1