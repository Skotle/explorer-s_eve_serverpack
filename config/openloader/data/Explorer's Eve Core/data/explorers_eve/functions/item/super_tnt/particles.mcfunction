#Ooh, swirly!
execute unless entity @e[tag=SuperTNTParticles,distance=10] run summon minecraft:area_effect_cloud ~ ~-10 ~ {Duration:300,Tags:["SuperTNTParticles"]}
execute as @e[tag=SuperTNTParticles] at @s run tp @s ~ ~0.25 ~ ~4 ~
execute at @e[tag=SuperTNTParticles] positioned ^ ^ ^5 run particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute at @e[tag=SuperTNTParticles] positioned ^ ^ ^-5 run particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force

#Sometimes spawn fireworks.
scoreboard players add @s Math 1
execute if score @s Math matches 40.. run summon firework_rocket ~ ~-10 ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[]}}},Silent:1}
execute if score @s Math matches 40.. run scoreboard players set @s Math 0

#As a last resort, if no Wither Storm exists, self-destruct.
execute unless entity @w run function explorers_eve:item/super_tnt/end