#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/ignis/end
execute unless entity @e[type=cataclysm:ignis,distance=..80] run function explorers_eve:music/ignis/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/ignis/loop_pick