#Give it resistance so the fight lasts longer.
tag @s remove Phase3
tag @s add Phase4

fill ~9 ~6 ~9 ~-9 ~16 ~-9 air replace minecraft:nether_brick_wall
fill ~9 ~6 ~9 ~-9 ~16 ~-9 air replace minecraft:nether_brick_fence
fill ~10 ~2 ~10 ~-10 ~2 ~-10 magma_block replace air

attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.movement_speed base set 0.45
execute at @s run function explorers_eve:boss/netherite_monstrosity/phase_change_effects
kill @e[tag=MonstrosityMobMark,distance=..40]
tp @e[tag=MonstrositySupport,distance=..40] ~ -1000 ~
tp @e[tag=MonstrosityRide,distance=..40] ~ -1000 ~