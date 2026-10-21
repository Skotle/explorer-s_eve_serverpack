#When empowered, do a lot more damage and slow down targets severely!
summon lightning_bolt
effect give @e[type=!player,type=!aether:cloud_minion,distance=..3.5] twilightforest:frosted 20 0
kill @s

#Pretty effects!
playsound minecraft:block.glass.break player @a ~ ~ ~ 3 1.5
particle block blue_ice ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..64]
particle dust 0 1 1 1 ~ ~ ~ 1 1 1 0 50 force @a[distance=..64]