#The cube takes some time to form.
scoreboard players add @s IceCubeTime 1
execute if entity @s[scores={IceCubeTime=1..3}] run function explorers_eve:boss/snow_queen/cube_particles
execute if entity @s[scores={IceCubeTime=3}] run function explorers_eve:boss/snow_queen/cube_set
execute if entity @s[scores={IceCubeTime=13}] run function explorers_eve:boss/snow_queen/cube_break