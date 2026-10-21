#Move the marker forward and spawn a void spike.
tp @s ^ ^ ^1
execute unless entity @e[type=cataclysm:ender_guardian,distance=..5] run summon cataclysm:void_rune
execute if block ~ ~ ~ end_stone run kill @s
execute unless entity @e[type=cataclysm:ender_guardian,distance=..48] run kill @s