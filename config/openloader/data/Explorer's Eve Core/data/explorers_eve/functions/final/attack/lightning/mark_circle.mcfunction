#Similar to quake. Spawn marks and move them.
summon marker ^ ^ ^10 {Tags:["LightningMark"]}
scoreboard players add @s Math 1
execute if score @s Math matches ..18 rotated ~20 ~ run function explorers_eve:final/attack/lightning/mark_circle