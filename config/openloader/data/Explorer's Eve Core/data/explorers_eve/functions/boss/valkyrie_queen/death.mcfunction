#When the boss dies, remove those markers.
scoreboard players reset @a ValkyrieColumnDelay
execute as @a run attribute @s forge:entity_gravity modifier remove 133a154f-3428-16ab-b768-aa41ce8930d7
effect give @a[distance=..40] minecraft:slow_falling 5 0 true
kill @e[tag=ValkyrieBoltMark,distance=..60]
kill @e[tag=LightningColumn,distance=..128]
kill @e[tag=ValkyrieTeleportMark,distance=..60]
kill @s