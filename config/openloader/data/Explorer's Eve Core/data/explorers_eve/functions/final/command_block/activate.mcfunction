#Phase transition!
tag @s add Phase1
tag @s remove CommandRematchIdle
team join NoInfighting @s

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}],RabbitType:99}

tag @a[distance=..200,tag=!MusicPlaying] add EmpowerMusic
scoreboard players set @s CommandSkullWait 150

loot spawn ~ ~1 ~ loot explorers_eve:withered_beacon_materials
execute positioned ~ ~1 ~ as @e[type=item,distance=..0.1] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air destroy
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace witherstormmod:hardened_flesh_block

#Update the FinalBattling tag to actually reflect who's battling.
tag @a remove FinalBattling
execute as @a[gamemode=!spectator,distance=..128] at @s run function explorers_eve:final/player/mark

summon witherstormmod:sickened_zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",LeftHanded:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:70f,Tags:["BarrierSource"],HandItems:[{id:"witherstormmod:stone_command_block_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s}]}}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.max_health,Base:70},{Name:generic.follow_range,Base:200}],Motion:[0d,0.5d,0d]}

summon witherstormmod:sickened_zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",LeftHanded:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:70f,Tags:["BarrierSource"],HandItems:[{id:"witherstormmod:stone_command_block_axe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s}]}}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.max_health,Base:70},{Name:generic.follow_range,Base:200}],Motion:[0d,0.5d,0d]}

summon witherstormmod:sickened_zombie ~ ~ ~ {DeathLootTable:"minecraft:empty",LeftHanded:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:70f,Tags:["BarrierSource"],HandItems:[{id:"witherstormmod:stone_command_block_pickaxe",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:15s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:fire_aspect",lvl:2s}]}},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:10s},{id:"minecraft:blast_protection",lvl:10s},{id:"minecraft:projectile_protection",lvl:10s}]}}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.max_health,Base:70},{Name:generic.follow_range,Base:200}],Motion:[0d,0.5d,0d]}

scoreboard players set @s CommandEntityCount 17