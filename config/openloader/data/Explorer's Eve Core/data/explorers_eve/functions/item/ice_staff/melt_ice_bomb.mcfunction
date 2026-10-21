#Kill the ice bomb and make effects. Used by several bosses.
particle dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 0.02 20
particle smoke ~ ~ ~ 0.15 0.15 0.15 0.02 20
particle flame ~ ~ ~ 0.15 0.15 0.15 0.05 30
playsound minecraft:block.lava.pop block @a ~ ~ ~ 1 1.5
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 1 0.75
fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace snow
kill @s