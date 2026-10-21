#Phase transition!
tag @s remove Phase1
tag @s add Phase2

execute as @e[type=twilightforest:lich_minion,distance=..32] run attribute @s minecraft:generic.movement_speed modifier add 1d32a04f-3438-15cb-b868-aa41cd7730d7 MinionSpeed 0.075 add

stopsound @a[distance=..40] record explorers_eve:lich_theme_1
scoreboard players set @a[tag=LichMusic,distance=..40] MusicTime 0