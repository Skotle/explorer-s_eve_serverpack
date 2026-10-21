#Make a line back towards the main marker.
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^0.25 unless entity @s[distance=..0.3] run function explorers_eve:boss/harbinger/summon_effects_line