#Aim at the target.
scoreboard players set @s StormAttackTime 0
execute if entity @s[scores={StormPhase=6..}] run scoreboard players add @s StormAttackTime 1

execute as @e[tag=LinePullSource,limit=1,sort=nearest] at @s run function explorers_eve:storm/attack/cutoff/move
execute as @e[tag=LinePullPossible,limit=1,distance=..200,sort=nearest] at @s facing entity @e[tag=LinePullTarget,limit=1,sort=nearest] eyes positioned ^ ^ ^10 run function explorers_eve:storm/attack/cutoff/cluster_find
tag @e[tag=MadeCluster,distance=..200] remove MadeCluster

execute unless entity @e[tag=LinePullSource] run function explorers_eve:storm/attack/cutoff/end