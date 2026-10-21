#No target? No Vex.
kill @s

#If there are no allied vexes left, reset the cooldown for whoever used the totem!
execute unless entity @e[tag=AllyVexTarget,distance=..128] unless entity @e[tag=AllyVex,distance=..128] as @p[tag=VexationUsed] at @s run function explorers_eve:item/vexation_totem/cooldown_end