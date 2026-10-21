#Main manager for Sun Spirit changes.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#When it's hurt, run appropriate functions.
execute if score @s Health < @s HealthLimit run function explorers_eve:boss/sun_spirit/hurt_effects

#In phases 2 and 3, disallow fire resistance.
execute if entity @s[tag=Phase2] as @a[distance=..24,predicate=explorers_eve:fire_resistance] at @s run function explorers_eve:boss/sun_spirit/clear_fire_resistance
execute if entity @s[tag=Phase3] as @a[distance=..24,predicate=explorers_eve:fire_resistance] at @s run function explorers_eve:boss/sun_spirit/clear_fire_resistance

#Fire Minions are nerfed.
execute as @e[type=aether:fire_minion,distance=..20,tag=!MinionNerfed] run function explorers_eve:boss/sun_spirit/minion_nerf

#Fire Crystals move slower.
execute as @e[type=aether:fire_crystal,tag=!FireCrystal,distance=..20] run function explorers_eve:boss/sun_spirit/fire_crystal_nerf

#Handles direct attacks.
execute if score @s Health matches ..45 run scoreboard players remove @s SunSpiritAttackTime 3
execute if score @s Health matches ..40 run scoreboard players remove @s SunSpiritAttackTime 2
execute if score @s Health matches ..30 run scoreboard players remove @s SunSpiritAttackTime 2
execute if score @s Health matches ..5 run scoreboard players remove @s SunSpiritAttackTime 3
execute if score @s SunSpiritAttackTime matches ..-1 unless entity @a[distance=..6,gamemode=!spectator] run function explorers_eve:boss/sun_spirit/attack_choose

#Fireballs are the WORST.
execute as @e[tag=Fireball,distance=..20] at @s run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}

#Handles shooting the laser.
execute if entity @s[tag=LaserActive] run function explorers_eve:boss/sun_spirit/laser

#Handles attacks based on restricting movement.
execute if score @s Health matches ..45 run scoreboard players remove @s SunSpiritArenaTime 3
execute if score @s Health matches ..30 run scoreboard players remove @s SunSpiritArenaTime 1
execute if score @s Health matches ..5 run scoreboard players remove @s SunSpiritArenaTime 2
execute if score @s SunSpiritArenaTime matches ..-1 at @e[tag=SunSpiritTracker,limit=1,sort=nearest] run function explorers_eve:boss/sun_spirit/arena_choose

#Wait before igniting the room.
execute as @e[tag=ArenaFireManager,distance=..25] at @s run function explorers_eve:boss/sun_spirit/arena_fire_warn

#Progress the wall of crystals.
execute as @e[tag=FireCrystalWall,distance=..25] at @s run function explorers_eve:boss/sun_spirit/wall_timer
execute as @e[tag=FireCrystalDelayed,distance=..25] at @s run function explorers_eve:boss/sun_spirit/wall_timer

#Handles spawning minions.
execute if score @s Health matches 5..40 run scoreboard players remove @s[tag=!IceDeny] SunSpiritMinionTime 2
execute if score @s Health matches 10..30 run scoreboard players remove @s[tag=!IceDeny] SunSpiritMinionTime 1
execute if score @s SunSpiritMinionTime matches ..-1 positioned ~ ~2 ~ run function explorers_eve:boss/sun_spirit/minion_choose

#Sometimes, normal Ice Crystals don't spawn.
execute if entity @s[tag=IceDeny] run function explorers_eve:boss/sun_spirit/ice_crystal_deny

#In the last phase, fire crystals despawn quickly.
execute if entity @s[tag=Phase3] as @e[type=aether:fire_crystal,distance=..25] run function explorers_eve:boss/sun_spirit/fire_crystal_limit

#Ice Bombs are disappointing.
execute as @e[type=twilightforest:thrown_ice,distance=..25] at @s run function explorers_eve:item/ice_staff/melt_ice_bomb

#Hint if the player takes too long to damage it.
execute if score @s Health matches 50 run function explorers_eve:boss/sun_spirit/hint

#If no one's around, deactivate.
execute if entity @s[nbt={BossFight:0b}] run function explorers_eve:boss/sun_spirit/deactivate