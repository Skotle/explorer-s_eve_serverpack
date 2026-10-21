#First, build all the clusters.
execute unless entity @s[tag=ClustersBuilt] if score @s GlitchAttackTime matches 45.. positioned ~8 ~ ~ run function explorers_eve:final/glitch/attack/cluster/build

#They rotate around the block.
execute as @e[tag=ClusterSpin,distance=..20] facing entity @s eyes rotated ~10 0 positioned ^ ^ ^8 run tp @s ~ ~ ~

#Then start throwing them.
scoreboard players add @e[tag=ClusterSpin,distance=..20] GlitchAttackTime 1
execute as @e[tag=ClusterSpin,distance=..20] if score @s GlitchAttackTime matches 150.. run function explorers_eve:final/glitch/attack/cluster/launch

#hen they're all gone, end.
execute if entity @s[tag=ClustersBuilt] unless entity @e[tag=ClusterSpin,distance=..20] run function explorers_eve:final/glitch/attack/cluster/end