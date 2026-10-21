#Remove the display.
tag @s remove DisplayActive
particle smoke ~ ~ ~ 0.15 0.15 0.15 0.02 20
playsound minecraft:block.lava.pop block @a[distance=..16] ~ ~ ~ 1 0.5
kill @e[tag=GolemDisplay,distance=..3]