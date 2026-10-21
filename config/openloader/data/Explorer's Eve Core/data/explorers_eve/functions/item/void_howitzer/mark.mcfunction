#Mark the entity and track it with an AEC.
tag @s add VoidMarked
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["VoidHowitzerTrack"]}
ride @e[tag=VoidHowitzerTrack,limit=1,sort=nearest,distance=..2] mount @s