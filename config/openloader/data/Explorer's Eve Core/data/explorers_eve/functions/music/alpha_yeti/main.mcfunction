#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/alpha_yeti/end
execute unless entity @e[type=twilightforest:alpha_yeti,distance=..48] run function explorers_eve:music/alpha_yeti/end
execute if entity @s[scores={MusicTime=..-1},tag=YetiIntro] run function explorers_eve:music/alpha_yeti/loop
execute if entity @s[scores={MusicTime=..-1},tag=!YetiIntro] run function explorers_eve:music/alpha_yeti/intro