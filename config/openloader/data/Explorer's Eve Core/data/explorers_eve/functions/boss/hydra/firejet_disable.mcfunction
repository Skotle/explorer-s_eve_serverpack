#Remove the fire jets.
fill ~1 ~1 ~1 ~-1 ~1 ~-1 grass_block replace twilightforest:fire_jet
execute if block ~ ~ ~ lava run setblock ~ ~ ~ air
kill @s