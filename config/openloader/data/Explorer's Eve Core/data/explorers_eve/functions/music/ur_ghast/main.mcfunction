#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/ur_ghast/end
execute unless entity @e[type=twilightforest:ur_ghast,distance=..64] run function explorers_eve:music/ur_ghast/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/ur_ghast/loop_pick