#Okay now you can come back.
tp @s ~ ~ ~
gamemode survival
tag @s remove FinalBattleDied

execute if predicate explorers_eve:glitch run attribute @s minecraft:generic.knockback_resistance modifier add 133a104f-3428-16ab-b768-aa41ce8930d7 GlitchKnockback -2 add

effect give @s minecraft:blindness 2 0 true

playsound minecraft:ambient.soul_sand_valley.mood player @s ~ 0 ~ 100 2 1
playsound minecraft:ambient.basalt_deltas.additions player @s ~ ~ ~ .5 1.2 .5
playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ .8 1.2 .8

particle dust 0 0 0 1 ~ ~1.5 ~ 0.4 2 0.4 1 300

witherstormmod sickness cure @s