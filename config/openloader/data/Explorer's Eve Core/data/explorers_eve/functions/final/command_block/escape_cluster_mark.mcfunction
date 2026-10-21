#Move the marker until it's not near a player.
spreadplayers ~ ~ 7 50 false @e[tag=ClusterMark,limit=1,sort=nearest]
execute at @e[tag=ClusterMark,limit=1,sort=nearest] unless entity @a[distance=..5] positioned ~ ~-1 ~ run function explorers_eve:final/command_block/escape_cluster_lift
execute at @e[tag=ClusterMark,limit=1,sort=nearest] if entity @a[distance=..5] run function explorers_eve:final/command_block/escape_cluster_mark