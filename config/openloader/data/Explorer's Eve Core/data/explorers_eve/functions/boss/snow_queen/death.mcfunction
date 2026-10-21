#When the Snow Queen dies or leaves, effects end.
execute as @e[tag=SnowQueenCube] at @s run function explorers_eve:boss/snow_queen/cube_break
kill @e[type=twilightforest:thrown_ice,distance=..40]

#Forcibly remove all guard cores.
execute as @e[tag=PermanentIceCore,distance=..200] run data modify entity @s DeathLootTable set value "minecraft:empty"
kill @e[tag=PermanentIceCore,distance=..200]

#Also explode the roof!
summon minecraft:creeper ~ ~24 ~ {Tags:["ApocalypseIgnore"],Fuse:0,ExplosionRadius:10b,CustomName:'{"text":"Gearsaw Studios"}'}
kill @s