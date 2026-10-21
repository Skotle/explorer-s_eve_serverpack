#Shield breaker. If it's never been broken before, nerf the tentacles.
tag @s remove BarrierActive
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace barrier
execute unless score @s CommandPhase matches 15 run playsound witherstormmod:command_block_damage hostile @a ~ ~ ~ 10
execute if score @s CommandPhase matches 16 unless entity @s[tag=Resummoned] run tag @s add SpawnersBroken
particle minecraft:flash ~ ~ ~

execute if score @s CommandPhase matches 6.. as @e[tag=BowelsTentacle,tag=!TentacleNerfed] run function explorers_eve:command_block/mobs/tentacle_nerf