#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_final_boss_theme
execute unless entity @e[tag=CommandRematch,distance=..200] run function explorers_eve:music/empower/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/empower/loop_pick