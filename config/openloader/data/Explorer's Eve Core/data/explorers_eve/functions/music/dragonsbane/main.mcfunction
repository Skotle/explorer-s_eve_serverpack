#Loop if needed, or stop if that's better.
execute if entity @s[tag=NullMusic] run function explorers_eve:music/dragonsbane/end
execute unless entity @e[type=twilightforest:pinch_beetle,tag=DragonsbaneBoss,distance=..80] run function explorers_eve:music/dragonsbane/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/dragonsbane/loop_pick