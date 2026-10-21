#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/snow_queen/end
execute unless entity @e[type=twilightforest:snow_queen,distance=..40] run function explorers_eve:music/snow_queen/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/snow_queen/loop