#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/wither/end
execute unless entity @e[type=wither,distance=..64] run function explorers_eve:music/wither/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/wither/loop