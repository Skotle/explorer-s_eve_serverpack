#Decide what to spawn.
scoreboard players set @s RandomRange 2
function explorers_eve:random
execute if score @s RandomValue matches ..0 run summon twilightforest:slime_beetle ~ ~ ~ {Tags:["DragonsbaneMinion"],PortalCooldown:100000,Health:16f,Attributes:[{Name:generic.max_health,Base:16},{Name:generic.follow_range,Base:64}],Invulnerable:1b,NoAI:1b}
execute if score @s RandomValue matches 1.. run summon twilightforest:fire_beetle ~ ~ ~ {Tags:["DragonsbaneMinion"],PortalCooldown:100000,Health:16f,Attributes:[{Name:generic.max_health,Base:16},{Name:generic.follow_range,Base:64}],Invulnerable:1b,NoAI:1b}
scoreboard players set @e[tag=DragonsbaneMinion,limit=1,sort=nearest] DragonsbaneDigTime 50