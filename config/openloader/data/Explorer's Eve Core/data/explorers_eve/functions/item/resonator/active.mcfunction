#After three minutes, despawn. If no one's nearby, also despawn.
scoreboard players add @s ResonatorTime 1
execute unless entity @a[gamemode=!spectator,distance=..48] run scoreboard players set @s ResonatorTime 99999
execute if score @s ResonatorTime matches 0 run function explorers_eve:item/resonator/activate
execute if score @s ResonatorTime matches 3600.. run kill @s

#Handle player transport while active.
execute if score @s ResonatorTime matches 100.. unless entity @s[tag=DelayTransport] as @a[gamemode=!spectator,distance=..4,tag=!ResonatorTeleporting] run function explorers_eve:item/resonator/transport_start
execute as @a[gamemode=!spectator,distance=..8,tag=ResonatorTeleporting] at @s run function explorers_eve:item/resonator/transport_timer
execute as @a[gamemode=!spectator,distance=4..,tag=ResonatorTeleporting] at @s unless entity @e[tag=BlueSkiesResonator,distance=..4] run function explorers_eve:item/resonator/transport_cancel
execute if entity @s[tag=DelayTransport] unless entity @a[gamemode=!spectator,distance=..4] run tag @s remove DelayTransport

#Particle time! Always rotate and make more points.
tp @s ~ ~ ~ ~6.5 ~
summon minecraft:area_effect_cloud ^0.01 ^ ^ {Duration:20,Tags:["ResonatorPoint"]}
summon minecraft:area_effect_cloud ^-0.01 ^ ^ {Duration:20,Tags:["ResonatorPoint"]}
summon minecraft:area_effect_cloud ^ ^ ^0.01 {Duration:20,Tags:["ResonatorPoint"]}
summon minecraft:area_effect_cloud ^ ^ ^-0.01 {Duration:20,Tags:["ResonatorPoint"]}

#Make particles based on which portal this is.
execute if entity @s[tag=BrightResonator] as @e[tag=ResonatorPoint,distance=..6] at @s run particle blue_skies:everbright_portal ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=DawnResonator] as @e[tag=ResonatorPoint,distance=..6] at @s run particle blue_skies:everdawn_portal ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=BrightResonator,tag=Active] as @e[tag=ResonatorPoint,distance=..3.85] at @s run particle blue_skies:blue_flame ~ ~ ~ 0 -999 0 1 0 force
execute if entity @s[tag=DawnResonator,tag=Active] as @e[tag=ResonatorPoint,distance=..3.85] at @s run particle blue_skies:black_flame ~ ~ ~ 0 -999 0 1 0 force
execute if entity @s[tag=BrightResonator,scores={ResonatorTime=-30..}] as @e[tag=ResonatorPoint,distance=3.85..6] at @s run particle blue_skies:blue_flame ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
execute if entity @s[tag=DawnResonator,scores={ResonatorTime=-30..}] as @e[tag=ResonatorPoint,distance=3.85..6] at @s run particle blue_skies:black_flame ~ ~ ~ 0.1 0.1 0.1 0.01 1 force

#Move points away.
execute as @e[tag=ResonatorPoint,distance=..3.85] at @s facing entity @e[tag=BlueSkiesResonator,limit=1,sort=nearest] eyes rotated ~ 0 run tp @s ^ ^ ^-0.25