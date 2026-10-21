#Big particles!
particle minecraft:electric_spark ~ ~ ~ 1.5 0.25 1.5 0.2 10

#Particle circle.
scoreboard players remove @s BarrierParticles 1
execute if score @s BarrierParticles matches ..0 run function explorers_eve:boss/valkyrie_queen/column_circle
scoreboard players set @s[scores={BarrierParticles=..0}] BarrierParticles 60

#Try to damage the player.
execute as @a[gamemode=!spectator,distance=..3.25] unless score @s ValkyrieColumnDelay matches 1.. run function explorers_eve:boss/valkyrie_queen/column_damage