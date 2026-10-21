#Phase transition!
tag @s remove Phase4
execute if entity @s[tag=CommandRematchIdle] run loot spawn ~ ~1 ~ loot explorers_eve:withered_beacon_materials
execute positioned ~ ~1 ~ as @e[type=item,distance=..0.1] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}
tag @s remove CommandRematchIdle
tag @s add CommandRematchEscape
stopsound @a[distance=..200] record explorers_eve:empower_theme_4
playsound explorers_eve:empower_theme_defeat record @a[distance=..250] ~ ~ ~ 100 1 1

fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air destroy
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace witherstormmod:hardened_flesh_block

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}

kill @e[tag=SkullHold]
summon area_effect_cloud ~ -31 ~ {Tags:["BarrierSource"],Duration:300}

execute unless data storage world FinalBossCheckpoint1 as @a[tag=FinalBattling,tag=!FinalBattleDied] at @s run function explorers_eve:final/give_experience

execute as @a[tag=FinalBattleDied] at @a[gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run function explorers_eve:final/player/respawn

scoreboard players set @s CommandSkullWait 10000