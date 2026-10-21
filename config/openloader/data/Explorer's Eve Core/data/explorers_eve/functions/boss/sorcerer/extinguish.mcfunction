#NOPE.
data modify entity @s Fire set value -1s
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 1.2
playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 2 0.75
particle flame ~ ~2 ~ 0.3 0.7 0.3 0.05 10
particle dust 0 0 0 1 ~ ~2 ~ 0.3 0.7 0.3 10 100