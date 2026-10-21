#Setup for digging that only needs to be done once. The DigSkullSource is handled every tick.
tag @s add DigActive
tag @s add StormAttacking
tag @s remove DigAiming
tag @s remove RotateSuccess
tag @a remove DigAimTarget
witherstormmod config server set server.misc.rotationSpeed default

scoreboard players set @s SkullSpeedMultiplier 30
playsound witherstormmod:bowels_loud_hurt hostile @a[distance=..300] ~ ~ ~ 1 0.6 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:50,Tags:["DigParticleSource"]}
summon minecraft:area_effect_cloud ^ ^15 ^ {Duration:50,Tags:["DigSkullSource"]}
execute unless entity @e[tag=AngerFocus,distance=..300] at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:9999,Tags:["DigSkullTarget"]}
execute if entity @e[tag=AngerFocus,distance=..300] at @e[tag=AngerFocus,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~0.25 ~ {Duration:9999,Tags:["DigSkullTarget"]}
execute at @e[tag=DigSkullTarget] run witherstormmod ultimateTarget set @s ~ ~ ~
execute as @e[tag=DigSkullSource] at @s run tp @s ~ ~ ~ facing entity @e[tag=DigSkullTarget,limit=1,sort=nearest]
execute as @e[tag=DigSkullSource] at @s facing entity @e[tag=DigSkullTarget,limit=1,sort=nearest] eyes run function explorers_eve:storm/attack/dig/measure
function explorers_eve:storm/attack/dig/particle_timer
scoreboard players add @e[tag=DigSkullSource] BlockCount 100
scoreboard players add @e[tag=DigSkullSource,scores={BlockCount=100}] BlockCount 20
execute if entity @e[tag=AngerFocus,distance=..300] run scoreboard players add @e[tag=DigSkullSource] BlockCount 300
execute as @e[tag=DigSkullSource] store result entity @s Duration int 0.35 run scoreboard players get @s BlockCount
execute as @e[tag=DigSkullSource] store result entity @e[tag=DigSkullTarget,limit=1,sort=nearest] Duration int 0.5 run scoreboard players get @s BlockCount