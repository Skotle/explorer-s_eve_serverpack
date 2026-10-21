#NOPE.
effect clear @s fire_resistance
effect give @s minecraft:blindness 2 0 true
playsound minecraft:ambient.soul_sand_valley.mood player @s ~ 0 ~ 100 2 1
playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ .5 1.2 .5
playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ .8 1.2 .8
playsound cataclysm:flame_burst hostile @s ~ ~ ~ 3 2
particle flame ~ ~2 ~ 1 2 1 0.05 100
tellraw @s {"text":"You are a fool to think such fleeting tinctures could withstand the fury of the sun.","color":"red"}