#Just in case the player falls out of the sky.
advancement revoke @s only explorers_eve:left_aether_protect
execute if entity @s[tag=InBeam] run tag @s remove InBeam
execute store result score @s Math run data get entity @s Pos[1]
execute if score @s Math matches 300.. run tag @s add AetherFall
execute if entity @s[tag=AetherFall] run schedule function explorers_eve:world/aether_exit_spawn_point 1s
scoreboard players reset @s Math