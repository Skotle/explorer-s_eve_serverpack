#Reset the fight if players die/flee.
tag @s remove ValkyrieQueenActive
tag @s remove Phase1
tag @s remove Phase2
tag @s remove Phase3
tag @s remove LevitateActive
scoreboard players reset @s Health
scoreboard players reset @s ValkyrieTeleportTime
scoreboard players reset @s ValkyrieBoltTime
scoreboard players reset @s ValkyrieGravityTime
scoreboard players reset @a ValkyrieColumnDelay

effect clear @s levitation
effect clear @s slow_falling
execute as @a run attribute @s forge:entity_gravity modifier remove 133a154f-3428-16ab-b768-aa41ce8930d7
effect give @a[distance=..40] minecraft:slow_falling 5 0 true

#attribute @s minecraft:generic.max_health modifier remove 1d58604f-3438-41cb-b968-ad31de8430d7
attribute @s minecraft:generic.armor modifier remove 1d32104f-3438-41ab-b968-ad21de8530d7
kill @e[tag=ValkyrieBoltMark,distance=..60]
kill @e[tag=LightningColumn,distance=..128]
kill @e[tag=ValkyrieQueenTracker,limit=1,sort=nearest]