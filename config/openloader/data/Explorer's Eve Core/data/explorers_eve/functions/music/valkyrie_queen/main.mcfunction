#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/valkyrie_queen/end
execute unless entity @e[tag=ValkyrieQueenActive,distance=..40] run function explorers_eve:music/valkyrie_queen/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/valkyrie_queen/loop_pick