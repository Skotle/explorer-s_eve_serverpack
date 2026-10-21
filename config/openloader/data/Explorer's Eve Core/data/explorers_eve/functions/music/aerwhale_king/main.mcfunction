#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/aerwhale_king/end
execute unless entity @e[tag=AerwhaleKingActive,distance=..50] run function explorers_eve:music/aerwhale_king/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/aerwhale_king/loop_pick