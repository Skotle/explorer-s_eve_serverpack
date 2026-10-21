#Don't apply a buff if this might be an enemy.
execute unless entity @e[type=#explorers_eve:blinding_boss,distance=..64] run function explorers_eve:world/artificial_golem_buff
tag @s add GolemBuffed