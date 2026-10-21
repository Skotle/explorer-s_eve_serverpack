#The laser moves faster if the targetted player is farther away.
tp @s ^ ^ ^0.15
execute unless entity @a[gamemode=!spectator,distance=..5] run tp @s ^ ^ ^0.3
execute unless entity @a[gamemode=!spectator,distance=..10] run tp @s ^ ^ ^0.6
execute unless entity @a[gamemode=!spectator,distance=..15] run tp @s ^ ^ ^1