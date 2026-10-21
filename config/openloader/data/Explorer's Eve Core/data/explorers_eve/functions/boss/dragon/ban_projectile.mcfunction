#Kill the projectile and make effects.
particle dust 1 1 1 1 ~ ~ ~ 0.15 0.15 0.15 0.02 20
particle smoke ~ ~ ~ 0.15 0.15 0.15 0.02 20
playsound minecraft:block.lava.pop block @a ~ ~ ~ 1 1.5
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 1 0.75
kill @s