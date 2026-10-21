#Launch a spawner into the arena.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 8 1.5
summon minecraft:endermite ~ ~3 ~ {Tags:["CommandLaunch"], ActiveEffects:[{Id:14,Amplifier:0b,Duration:999999,ShowParticles:0b},{Id:20,Amplifier:0b,Duration:999999,ShowParticles:0b}],Health:2,Silent:1,Passengers:[{id:"minecraft:area_effect_cloud",Duration:200,Tags:["CommandSpawner","BarrierSource"],Passengers:[{id:falling_block,BlockState:{Name:"minecraft:spawner"},Glowing:1b,Time:400,DropItem:0b,Tags:["CommandSpawnerBlock"]}]}]}
team join NoInfighting @e[tag=CommandLaunch,limit=1,sort=nearest]

#Give momentum.
execute as @e[tag=CommandLaunch] at @s run function explorers_eve:command_block/launch_entity