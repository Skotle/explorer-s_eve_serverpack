#Spawn an unbreakable Elytra.
summon item ~ ~6 ~ {Age:-32768,Health:100000,NoGravity:1b,Glowing:1b,Invulnerable:1b,Motion:[0.0,-0.1,0.0],Item:{id:"minecraft:elytra",Count:1b,tag:{Unbreakable:1b}}}
particle minecraft:flash ~ ~6 ~
particle end_rod ~ ~6 ~ 0.05 0.05 0.05 0.1 40 force
playsound minecraft:entity.zombie_villager.converted player @s ~ ~6 ~ 1 1.5 1
playsound minecraft:entity.firework_rocket.blast player @s ~ ~6 ~ 1 1.5 1
tag @s remove FinalBattleLoot