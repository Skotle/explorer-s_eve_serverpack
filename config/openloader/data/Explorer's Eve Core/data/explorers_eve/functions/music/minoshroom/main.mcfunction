#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/minoshroom/end
execute unless entity @e[type=twilightforest:minoshroom,distance=..40] run function explorers_eve:music/minoshroom/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/minoshroom/loop