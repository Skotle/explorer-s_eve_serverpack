#Don't forget skeletons!
data merge entity @e[type=minecraft:skeleton,limit=1,sort=nearest,distance=..2] {DeathLootTable:"minecraft:empty",Silent:1b}
kill @e[type=minecraft:skeleton,limit=1,sort=nearest,distance=..2]
data modify entity @s Silent set value 1b
effect give @s invisibility 10 0 true

summon blue_skies:nested_spider ~ ~ ~
tp @s ~ ~-1000 ~
kill @s