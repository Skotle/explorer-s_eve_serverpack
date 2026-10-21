#The cube won't last forever.
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace blue_ice
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.65
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.75
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.85
particle block blue_ice ~ ~ ~ 2 2 2 0.1 100
kill @s