#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/knight_phantom/end
execute unless entity @e[type=twilightforest:knight_phantom,distance=..32] run function explorers_eve:music/knight_phantom/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/knight_phantom/loop