#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/blinding/end
execute unless entity @e[type=#explorers_eve:blinding_boss,distance=..32] run function explorers_eve:music/blinding/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/blinding/loop_pick