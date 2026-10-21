#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/slider/end
execute unless entity @e[tag=SliderActive,distance=..28] run function explorers_eve:music/slider/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/slider/loop_pick