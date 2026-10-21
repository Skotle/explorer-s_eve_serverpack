#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/naga/end
execute unless entity @e[type=twilightforest:naga,scores={Health=1..},distance=..48] run function explorers_eve:music/naga/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/naga/loop_pick