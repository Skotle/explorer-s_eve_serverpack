#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/population/end
execute unless entity @e[type=#explorers_eve:population_boss,distance=..48] run function explorers_eve:music/population/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/population/loop_pick