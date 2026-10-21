#First, check if this should even be happening.
execute if entity @s[tag=FormidibombAngry] run tag @a remove DigAimTarget
execute unless entity @p[gamemode=!spectator,tag=DigAimTarget,distance=..600] run function explorers_eve:storm/attack/dig/end
execute if entity @p[gamemode=!spectator,tag=DigAimTarget,distance=..600] run function explorers_eve:storm/attack/dig/aim