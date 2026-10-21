#Nerf the effect.
tag @e[type=!player,predicate=explorers_eve:frosted_3] add FrostedNerf
effect clear @e[tag=FrostedNerf] twilightforest:frosted
effect give @e[tag=FrostedNerf] twilightforest:frosted 10 0
tag @e[tag=FrostedNerf] remove FrostedNerf