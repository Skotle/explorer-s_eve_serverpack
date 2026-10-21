#Clean everything back up.
tag @s remove StormAttacking

scoreboard players set @s StormAttackTime 0
execute as @e[tag=QuakeMark] at @s positioned ~ ~-2 ~ run function explorers_eve:storm/attack/quake/lift

tag @s remove QuakeActive