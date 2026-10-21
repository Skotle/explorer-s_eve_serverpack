#Find when to pick up a cluster.
execute unless block ~ ~ ~ air positioned ^ ^ ^2 run function explorers_eve:storm/attack/cutoff/cluster_lift
execute unless entity @s[tag=MadeCluster] unless entity @s[distance=300..] positioned ^ ^ ^1 run function explorers_eve:storm/attack/cutoff/cluster_find