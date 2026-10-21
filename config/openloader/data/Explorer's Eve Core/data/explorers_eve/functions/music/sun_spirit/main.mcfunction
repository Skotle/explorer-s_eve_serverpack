#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/sun_spirit/end
execute unless entity @e[type=aether:sun_spirit,distance=..28] run function explorers_eve:music/sun_spirit/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/sun_spirit/loop_pick