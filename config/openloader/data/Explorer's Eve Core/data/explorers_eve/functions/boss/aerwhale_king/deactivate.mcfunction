#Reset the fight if players die/flee.
tag @s remove AerwhaleKingActive
tag @s remove Phase1
tag @s remove Phase2
tag @s remove AerwhaleCrashed
scoreboard players reset @s Health
scoreboard players reset @s AerwhaleStunTime
scoreboard players reset @s AerwhaleFogTime
scoreboard players reset @s HintTime

data modify entity @s FogCooldown set value 400
attribute @s minecraft:generic.max_health modifier remove 1d58604f-3438-41cb-b968-ad31de8430d7