#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/harbinger/end
execute unless entity @e[type=cataclysm:the_harbinger,distance=..64] unless entity @e[tag=HarbingerSummonMark,distance=..64] run function explorers_eve:music/harbinger/end
execute if entity @s[scores={MusicTime=..-1},tag=HarbingerIntro] run function explorers_eve:music/harbinger/loop
execute if entity @s[scores={MusicTime=..-1},tag=!HarbingerIntro] run function explorers_eve:music/harbinger/intro