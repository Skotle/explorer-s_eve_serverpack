#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_boss_theme
stopsound @s record witherstormmod:wither_storm_reviving_theme
stopsound @s record witherstormmod:wither_storm_final_boss_theme
execute unless predicate explorers_eve:glitch unless entity @e[tag=CommandBlockDying,distance=..500] run function explorers_eve:music/glitch/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/glitch/loop_pick