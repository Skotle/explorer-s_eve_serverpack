#Shield manager. Make particles, make the Command Block invincible, and clear all of it when appropriate.
scoreboard players add @s BarrierParticles 1
execute if score @s BarrierParticles matches 20.. positioned ~ ~0.4 ~ rotated 0 -90 run function explorers_eve:final/command_block/barrier/particle_sphere

#It only attacks while this shield is up.
scoreboard players remove @s CommandSkullWait 1
execute if score @s CommandSkullWait matches ..-1 run function explorers_eve:final/command_block/attack/choose

#Barrier sources glow when no one's around.
execute as @e[tag=BarrierSource,type=!minecraft:warden] at @s unless entity @a[gamemode=!spectator,distance=..16] run effect give @s glowing 1 0 true
execute as @e[tag=BarrierSource,type=!minecraft:warden] unless entity @s[distance=..40] run tp @s ~ ~ ~
execute as @e[tag=BarrierSource,tag=!WardenBarrage,tag=!WardenEmerging,type=minecraft:warden] unless entity @s[distance=..80] run tp @s ~ ~ ~
execute if entity @s[tag=Phase4] as @e[type=#explorers_eve:blinding_boss,distance=..100] at @s positioned over world_surface unless entity @s[distance=..6] run tp @s @e[tag=CommandRide,limit=1,sort=nearest]

#No escaping!
execute unless entity @s[tag=CommandRematchEscape] unless entity @a[gamemode=!spectator,tag=FinalBattling,distance=..64] at @p[tag=FinalBattling,distance=..200] run tp @e[tag=CommandRide,limit=1,sort=nearest] ~ ~40 ~

execute unless entity @e[tag=BarrierSource,distance=..999] run function explorers_eve:final/command_block/barrier/break
