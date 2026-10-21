#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_boss_theme
stopsound @s record witherstormmod:wither_storm_reviving_theme
stopsound @s record witherstormmod:wither_storm_final_boss_theme
stopsound @s record witherstormmod:withered_symbiont_theme
stopsound @s record witherstormmod:withered_symbiont_intense_theme
execute unless entity @w[tag=FinalBoss,distance=..500] run function explorers_eve:music/final/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/final/loop_pick