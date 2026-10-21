#Tag the player for fall damage, and unless there's a Symbiont, give effects.
execute unless entity @e[type=witherstormmod:withered_symbiont,distance=..64] run function explorers_eve:storm/beam/effects
execute unless entity @s[tag=InBeam] run playsound witherstormmod:wither_storm_tractor_beam_activate hostile @s
tag @s add InBeam

#Remove a Fortification Shield, too!
twilightforest shield @s add -1