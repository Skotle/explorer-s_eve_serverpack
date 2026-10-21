#Summons a fireball.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 8 1.5
summon minecraft:endermite ~ ~1 ~ {Tags:["CommandLaunch"], ActiveEffects:[{Id:14,Amplifier:0b,Duration:999999,ShowParticles:0b},{Id:20,Amplifier:0b,Duration:999999,ShowParticles:0b}],Health:2,Silent:1,Passengers:[{id:dragon_fireball,direction:[0.0,0.1,-1.0],power:[0.0,-0.1,0.0],CreatedBySymbiont:1b}]}
execute as @e[tag=CommandLaunch] at @s run function explorers_eve:command_block/launch_entity