#Runs every tick once transporting starts.
data modify entity @s BossfightManager.CurrentPhase set value 6
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air
tp @e[tag=GlitchTransportDisplay,limit=1,sort=nearest] @s
execute if entity @a[gamemode=!spectator,distance=0..15] run data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 0.6
execute if entity @a[gamemode=!spectator,distance=15..25] run data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 0.45
execute if entity @a[gamemode=!spectator,distance=25..40] run data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 0.3
execute unless entity @a[gamemode=!spectator,distance=..40] run data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 0
scoreboard players add @s GlitchTransportTime 1
execute if score @s GlitchTransportTime matches 10 run function explorers_eve:final/command_block_transport_start
execute if score @s GlitchTransportTime matches 11 run data merge entity @e[tag=GlitchTransportDisplay,limit=1,sort=nearest] {start_interpolation:0,interpolation_duration:60,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-8.5f,-8.5f,-8.5f],scale:[16f,16f,16f]}}
execute if score @s GlitchTransportTime matches 70 run function explorers_eve:final/command_block_transport_end