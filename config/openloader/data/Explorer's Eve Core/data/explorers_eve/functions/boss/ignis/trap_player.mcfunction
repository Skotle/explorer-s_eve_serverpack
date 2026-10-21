#No escaping! Effects are copied from the End void rescue function.
tp @s ~ ~1 ~

effect give @s minecraft:darkness 4 0 true
effect give @s minecraft:blindness 2 0 true

playsound minecraft:ambient.soul_sand_valley.mood player @s ~ 0 ~ 100 2 1
playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ .5 1.2 .5
playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ .8 1.2 .8

particle dust 0 0 0 1 ~ ~1.5 ~ 0.4 2 0.4 1 300
