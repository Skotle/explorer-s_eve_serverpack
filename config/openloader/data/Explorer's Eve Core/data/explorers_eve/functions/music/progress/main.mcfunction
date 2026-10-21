#These tracks are special and only stop when they're finished. They also can be overridden by anything else, so enjoy them when they show up!
scoreboard players remove @s MusicTime 1
stopsound @s music

execute if entity @s[tag=MusicPlaying] run function explorers_eve:music/progress/end
execute if entity @s[tag=NullMusic] run function explorers_eve:music/progress/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/progress/end