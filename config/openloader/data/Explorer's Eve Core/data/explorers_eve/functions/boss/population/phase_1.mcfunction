#Update tags.
tag @s remove SpawnRoots
tag @s remove Phase2
tag @s add Phase1
execute if entity @s[type=blue_skies:arachnarch] run tag @s add SpawnSpiders
execute if entity @s[type=blue_skies:arachnarch] run tp @e[tag=ArachnarchAid,distance=..50] ~ -1000 ~