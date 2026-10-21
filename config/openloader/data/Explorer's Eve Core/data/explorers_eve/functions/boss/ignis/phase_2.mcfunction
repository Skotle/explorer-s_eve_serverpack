#Give it resistance so the fight lasts longer.
tag @s remove Phase1
tag @s add Phase2

execute as @s[tag=IgnisFlamePuddle,distance=..80] run data modify entity @s Particle set value "soul_fire_flame"
fill ~30 ~3 ~30 ~-30 ~-4 ~-30 twilightforest:blue_force_field replace twilightforest:pink_force_field
fill ~30 ~11 ~30 ~-30 ~4 ~-30 twilightforest:blue_force_field replace twilightforest:pink_force_field
fill ~30 ~19 ~30 ~-30 ~12 ~-30 twilightforest:blue_force_field replace twilightforest:pink_force_field
fill ~30 ~27 ~30 ~-30 ~20 ~-30 twilightforest:blue_force_field replace twilightforest:pink_force_field