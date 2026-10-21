#Place a spawner.
setblock ~ ~ ~ spawner{SpawnCount:4,SpawnRange:4,Delay:98,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:128,RequiredPlayerRange:64,SpawnData:{entity:{id:"twilightforest:wraith",PortalCooldown:1000000,Tags:["KnightWraith"]},custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}}}} destroy

#Effects!
tp @s ~ ~ ~
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 2 1.5
particle twilightforest:ominous_flame ~ ~ ~ 0.25 0.25 0.25 0.1 80
