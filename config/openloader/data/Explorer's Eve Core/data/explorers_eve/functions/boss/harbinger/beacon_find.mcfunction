#Locate the beacon.
execute if block ~ ~ ~ beacon unless block ~ ~ ~ beacon{Levels:0} align xyz positioned ~0.5 ~0.5 ~0.5 run function explorers_eve:boss/harbinger/summon_start
execute unless block ~ ~ ~ beacon positioned ^ ^ ^0.25 if entity @s[distance=..7] run function explorers_eve:boss/harbinger/beacon_find
