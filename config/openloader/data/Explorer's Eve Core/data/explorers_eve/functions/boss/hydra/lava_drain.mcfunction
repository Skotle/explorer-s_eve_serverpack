#Dispose of the lava if its been long enough.
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 lava[level=1] replace lava
kill @e[type=falling_block,distance=..2]
kill @s