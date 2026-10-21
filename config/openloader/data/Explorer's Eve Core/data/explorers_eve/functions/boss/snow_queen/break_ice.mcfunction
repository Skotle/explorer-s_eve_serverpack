#Break out of the ice.
fill ~1 ~1 ~1 ~-1 ~ ~-1 air replace blue_ice
tp @s ~ ~1 ~
playsound minecraft:block.glass.break block @a ~ ~ ~ 2 0.75
particle block blue_ice ~ ~ ~ 1 0.5 1 0.1 100
execute positioned ~ ~1 ~ if block ~ ~1 ~ blue_ice run function explorers_eve:boss/snow_queen/break_ice