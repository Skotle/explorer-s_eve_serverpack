#Activates whenever the totem is clicked.
tag @s add VexationTotemUsing
execute if score @s VexationCooldown matches 1.. run function explorers_eve:item/vexation_totem/fail
execute unless score @s VexationCooldown matches 1.. anchored eyes positioned ^ ^ ^0.5 run function explorers_eve:item/vexation_totem/scan
tag @s remove VexationTotemUsing
scoreboard players reset @s Math