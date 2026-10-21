#Run whatever fits for the health it's now at. First, update the health limit.
scoreboard players operation @s HealthLimit = @s Health

#Phase transitions.
execute if entity @s[tag=Phase1] if entity @s[scores={Health=..35}] run function explorers_eve:boss/sun_spirit/phase_2
execute if entity @s[tag=Phase2] if entity @s[scores={Health=..10}] run function explorers_eve:boss/sun_spirit/phase_3

#Spawn fire crystals on hit.
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[0.3d,0.2d,0.3d],XSpeed:0.3d,YSpeed:0.2d,ZSpeed:0.3d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[-0.3d,0.2d,0.3d],XSpeed:-0.3d,YSpeed:0.2d,ZSpeed:0.3d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[0.3d,0.2d,-0.3d],XSpeed:0.3d,YSpeed:0.2d,ZSpeed:-0.3d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[-0.3d,0.2d,-0.3d],XSpeed:-0.3d,YSpeed:0.2d,ZSpeed:-0.3d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[0.3d,0.2d,0d],XSpeed:0.3d,YSpeed:0.2d,ZSpeed:0d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[-0.3d,0.2d,0d],XSpeed:-0.3d,YSpeed:0.2d,ZSpeed:0d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[0d,0.2d,0.3d],XSpeed:0d,YSpeed:0.2d,ZSpeed:0.3d}
summon aether:fire_crystal ~ ~ ~ {Tags:["FireCrystal","HurtCrystal"],Motion:[0d,0.2d,-0.3d],XSpeed:0d,YSpeed:0.2d,ZSpeed:-0.3d}

#In low phases, not all of them spawn.
execute if score @s Health matches 35.. run kill @e[tag=HurtCrystal,distance=..25,sort=random,limit=2]
execute if score @s Health matches 20.. run kill @e[tag=HurtCrystal,distance=..25,sort=random,limit=3]
execute as @e[type=aether:fire_crystal,distance=..30] run data modify entity @s Owner set from entity @e[type=aether:sun_spirit,limit=1,sort=nearest] UUID

#For all hits after the first, spawn minions on hit.
execute if score @s Health matches 5..40 run function explorers_eve:boss/sun_spirit/minion_group

#Past phase 3, ice crystals are rarer.
execute if entity @s[tag=Phase3] run tag @s add IceDeny

#In phase 3, look frozen.
execute if entity @s[tag=Phase3] run data modify entity @s HurtTime set value 32767

#Deny ice for a certain period of ticks.
execute if entity @s[tag=Phase3] run scoreboard players set @s SunSpiritIceTime 600