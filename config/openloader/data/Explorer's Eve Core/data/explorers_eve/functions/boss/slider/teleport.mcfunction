#Teleport the boss and break things.
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2
particle dust 1 0 1 1 ~ ~1 ~ 1 1 1 10 100
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2
execute at @s run particle dust 1 0 1 1 ~ ~1 ~ 1 1 1 10 100
tp @s ~ ~ ~
fill ~-1 ~1 ~-1 ~ ~ ~ air destroy