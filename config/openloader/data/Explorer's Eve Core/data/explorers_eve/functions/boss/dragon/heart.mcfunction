#When the dragon dies, summon the core above the portal.
execute if block ~ ~ ~ air run particle end_rod ~ ~6.25 ~ 0 0 0 0.1 50 force
execute if block ~ ~ ~ air run summon item ~ ~6.25 ~ {NoGravity:1b,Glowing:1b,Health:10000,Motion:[0.0,-0.1,0.0],Tags:["DragonCore"],Item:{id:"twilightforest:knightmetal_ring",Count:1b}}
execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function explorers_eve:boss/dragon/heart