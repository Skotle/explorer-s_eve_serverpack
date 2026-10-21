#Spiders replace themselves with spider jockeys.
data merge entity @e[type=minecraft:skeleton,limit=1,sort=nearest,distance=..2] {DeathLootTable:"minecraft:empty",Silent:1b}
kill @e[type=minecraft:skeleton,limit=1,sort=nearest,distance=..2]
summon witherstormmod:sickened_skeleton ~ ~ ~ {HandItems:[{id:bow,Count:1b}]}
ride @e[type=witherstormmod:sickened_skeleton,limit=1,sort=nearest] mount @s