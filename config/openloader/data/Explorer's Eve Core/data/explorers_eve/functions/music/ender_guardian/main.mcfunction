#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/ender_guardian/end
execute unless entity @e[type=cataclysm:ender_guardian,distance=..64] run function explorers_eve:music/ender_guardian/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/ender_guardian/loop_pick