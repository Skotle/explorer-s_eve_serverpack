#The icicle takes time to fall.
scoreboard players add @s IceFallTime 1
execute if entity @s[scores={IceFallTime=1..3}] run function explorers_eve:boss/snow_queen/icicle_particles
execute if entity @s[scores={IceFallTime=3}] run function explorers_eve:boss/snow_queen/icicle_drop