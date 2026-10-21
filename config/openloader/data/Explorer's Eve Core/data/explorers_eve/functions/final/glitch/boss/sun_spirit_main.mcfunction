#Main manager for Sun Spirit changes.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#When it's hurt, run appropriate functions.
execute if score @s Health < @s HealthLimit run function explorers_eve:final/glitch/boss/sun_spirit_hurt

#Fireballs are the WORST.
execute as @e[tag=Fireball,distance=..20] at @s run summon minecraft:small_fireball ~ ~1 ~ {power:[0d,-0.25d,0d]}

#Handles shooting the laser.
execute if entity @s[tag=LaserActive] run function explorers_eve:boss/sun_spirit/laser

#Handles spawning minions.
scoreboard players remove @s SunSpiritMinionTime 5
execute if score @s SunSpiritMinionTime matches ..-1 positioned ~ ~2 ~ run function explorers_eve:boss/sun_spirit/minion_choose

#Sometimes, normal Ice Crystals don't spawn.
execute if entity @s[tag=IceDeny] run function explorers_eve:boss/sun_spirit/ice_crystal_deny

#No fire crystals, ever. Spam laser. Ice crystals prompt a spread of stationary crystals to hit back.
execute if entity @e[type=aether:fire_crystal,distance=..5] run function explorers_eve:final/glitch/boss/sun_spirit_fireball
execute unless entity @s[tag=LaserActive] run function explorers_eve:boss/sun_spirit/laser_start
execute if entity @e[type=aether:ice_crystal,distance=..5,tag=!IceCrystalSpread] run function explorers_eve:boss/sun_spirit/ice_crystal_spread
execute unless entity @a[gamemode=!spectator,distance=..40] run function explorers_eve:boss/sun_spirit/teleport