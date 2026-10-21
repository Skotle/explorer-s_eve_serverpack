#Load the Twilight Forest, put the player somewhere near the hut, and set their spawn.
tp @s 100 32 0
forceload add 70 -30 130 30
spreadplayers 100 0 1 32 under 16 false @s
execute at @s if block ~ ~ ~ cave_air positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute unless entity @s[x=100,y=32,z=0,dx=1,dy=1,dz=1] positioned 100 32 0 if entity @s[distance=..100] at @s run spawnpoint @s ~ ~ ~ 0
execute if entity @s[x=100,y=32,z=0,dx=1,dy=1,dz=1] run effect give @s slow_falling 30
forceload remove 70 -30 130 30