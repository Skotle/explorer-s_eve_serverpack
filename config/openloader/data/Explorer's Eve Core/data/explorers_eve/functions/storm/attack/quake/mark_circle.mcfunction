#Similar to quake. Spawn marks and move them.
summon marker ^ ^ ^24 {Tags:["QuakeMark"]}
scoreboard players add @s Math 1
execute if score @s Math matches ..20 rotated ~18 ~ run function explorers_eve:storm/attack/quake/mark_circle