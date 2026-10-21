#Put in a new function to make sure positioning works.
execute positioned ~-24 ~-1 ~-24 run tag @a[dx=48,dy=25,dz=48] add IgnisBattling
summon marker ~ ~ ~ {Tags:["IgnisTracker"]}
execute store result score @s Health run data get entity @s Health

fill ~25 ~25 ~25 ~-25 ~-3 ~25 twilightforest:pink_force_field replace air
fill ~25 ~25 ~25 ~25 ~-3 ~-25 twilightforest:pink_force_field replace air
fill ~-25 ~25 ~25 ~-25 ~-3 ~-25 twilightforest:pink_force_field replace air
fill ~25 ~25 ~-25 ~-25 ~-3 ~-25 twilightforest:pink_force_field replace air
fill ~25 ~25 ~25 ~-25 ~25 ~-25 twilightforest:pink_force_field replace air
fill ~25 ~-3 ~25 ~-25 ~-3 ~-25 twilightforest:pink_force_field replace air