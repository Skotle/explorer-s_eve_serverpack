#Update tags.
tag @s remove SpawnSpiders
execute at @e[type=blue_skies:nested_spider,limit=2,sort=random,distance=..50] run summon blue_skies:venom_spider ~ ~ ~ {Tags:["ArachnarchAid","EndermanChecked"]}
execute as @e[tag=ArachnarchAid,limit=2,sort=nearest,distance=..50] at @s run tp @e[type=blue_skies:nested_spider,limit=1,sort=nearest] ~ -1000 ~