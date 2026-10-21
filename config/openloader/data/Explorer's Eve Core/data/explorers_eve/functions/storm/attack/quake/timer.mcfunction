#Wait for the right time.
execute at @e[tag=QuakeMark] run particle block grass ~ ~0.25 ~ 2.5 0.25 2.5 0.1 25

execute if score @s StormAttackTime matches 50.. run function explorers_eve:storm/attack/quake/end