#Tick down the cooldown.
scoreboard players remove @s VexationCooldown 1
execute if score @s VexationCooldown matches ..0 at @s run function explorers_eve:item/vexation_totem/cooldown_end