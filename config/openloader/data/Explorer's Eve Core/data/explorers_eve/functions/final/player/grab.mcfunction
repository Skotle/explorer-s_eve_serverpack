#Triggered by running too far away from the glitched Command Block.
tag @s add GlitchGrabbed
effect give @s levitation 60 255 true
effect give @s cataclysm:stun 60 0 true
effect give @s resistance 3 4 true
scoreboard players set @s GlitchParticleTime 20

effect give @s minecraft:blindness 2 0 true
playsound minecraft:ambient.soul_sand_valley.mood player @s ~ 0 ~ 100 2 1
playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ .5 1.2 .5
playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ .8 1.2 .8
playsound witherstormmod:wither_storm_tractor_beam_activate hostile @s
particle dust 0 0 0 1 ~ ~1.5 ~ 0.4 2 0.4 1 300