#Do a whole bunch of awful things.
effect give @s minecraft:hunger 4 0 true
effect give @s minecraft:mining_fatigue 4 0 true
effect give @s minecraft:slowness 4 0 true
effect give @s minecraft:weakness 4 0 true
#effect give @s minecraft:wither 2 1 true
execute unless entity @s[tag=InBeam] run playsound witherstormmod:wither_storm_tractor_beam_activate hostile @s
tag @s add InBeam
tag @s remove FinalBossTarget