#Give it resistance so the fight lasts longer.
tag @s remove Phase2
tag @s remove Phase3Wait
tag @s add Phase3

fill ~9 ~8 ~9 ~-9 ~16 ~-9 air replace minecraft:nether_brick_wall
fill ~9 ~8 ~9 ~-9 ~16 ~-9 air replace minecraft:nether_brick_fence
fill ~10 ~9 ~10 ~-10 ~9 ~-10 lava replace air

attribute @s minecraft:generic.movement_speed base set 0.25
execute at @s run function explorers_eve:boss/netherite_monstrosity/phase_change_effects
tp @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] ~ ~8 ~
execute as @e[tag=MonstrosityMobMark,distance=..40] at @s run tp @s ~ ~ ~