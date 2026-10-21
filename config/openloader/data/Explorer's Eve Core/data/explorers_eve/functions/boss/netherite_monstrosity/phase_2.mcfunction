#Give it resistance so the fight lasts longer.
tag @s remove Phase1
tag @s remove Phase2Wait
tag @s add Phase2

fill ~10 ~-1 ~10 ~-10 ~2 ~-10 air replace minecraft:nether_brick_fence
fill ~8 ~ ~8 ~-8 ~10 ~-8 air replace minecraft:nether_brick_fence
fill ~10 ~5 ~10 ~-10 ~5 ~-10 lava replace air

scoreboard players set @s MonstrosityPhaseTransition 0
scoreboard players set @s MonstrosityTime 100

data modify entity @s is_Berserk set value 1
attribute @s minecraft:generic.armor base set 14
attribute @s minecraft:generic.movement_speed base set 0
execute at @s run function explorers_eve:boss/netherite_monstrosity/phase_change_effects
tp @s ~ ~5 ~
tp @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] ~ ~4 ~