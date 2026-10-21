#This is now a super fireball.
tag @s add SoulEmpowered
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:40,Tags:["SoulEmpowerMark","NewSoulMark"]}
ride @e[tag=NewSoulMark,limit=1,sort=nearest] mount @s
tag @e[tag=NewSoulMark,limit=1,sort=nearest] remove NewSoulMark