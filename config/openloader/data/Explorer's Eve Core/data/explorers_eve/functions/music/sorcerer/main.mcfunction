#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/sorcerer/end
execute unless entity @e[tag=SorcererBoss,distance=..80] run function explorers_eve:music/sorcerer/end
execute if entity @s[scores={MusicTime=..-1},tag=SorcererIntro] run function explorers_eve:music/sorcerer/loop
execute if entity @s[scores={MusicTime=..-1},tag=!SorcererIntro] run function explorers_eve:music/sorcerer/intro