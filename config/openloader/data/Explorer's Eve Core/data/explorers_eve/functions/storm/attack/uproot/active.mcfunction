#Move closer, make a cluster, and if it's time to stop, then stop.
scoreboard players set @s StormAttackTime 0
execute as @e[tag=UprootPullSource,limit=1,sort=nearest] at @s run function explorers_eve:storm/attack/uproot/move

execute unless entity @e[tag=UprootPullSource] run function explorers_eve:storm/attack/uproot/end