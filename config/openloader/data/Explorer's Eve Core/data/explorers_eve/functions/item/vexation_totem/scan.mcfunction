#Search for a target.
scoreboard players add @s Math 1
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=!#explorers_eve:vexes_wont_target,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function explorers_eve:item/vexation_totem/mark
execute unless score @s Math matches 64.. positioned ^ ^ ^0.5 run function explorers_eve:item/vexation_totem/scan