#Clean everything back up.
tag @s remove FinalBossAttacking
tag @s remove QuakeActive

execute as @e[tag=QuakeMark] at @s positioned ~ ~-1 ~ run function explorers_eve:final/attack/quake/lift