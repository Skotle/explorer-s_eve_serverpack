#The target point moves faster if the targetted player is farther away.
tp @s ^ ^ ^0.2
execute unless entity @a[gamemode=!spectator,distance=..5] run tp @s ^ ^ ^0.4
execute unless entity @a[gamemode=!spectator,distance=..10] run tp @s ^ ^ ^0.8
execute unless entity @a[gamemode=!spectator,distance=..15] run tp @s ^ ^ ^1.5