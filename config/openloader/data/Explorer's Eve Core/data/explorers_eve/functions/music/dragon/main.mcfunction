#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/dragon/end
execute unless entity @e[tag=DragonTracker,distance=..300] run function explorers_eve:music/dragon/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/dragon/loop_pick