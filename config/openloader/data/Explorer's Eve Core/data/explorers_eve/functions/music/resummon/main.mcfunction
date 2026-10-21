#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_boss_theme
stopsound @s record witherstormmod:wither_storm_formidibomb_theme
stopsound @s record witherstormmod:wither_storm_reviving_theme
stopsound @s record witherstormmod:wither_storm_bowels_exposed_theme
stopsound @s record witherstormmod:withered_symbiont_theme
stopsound @s record witherstormmod:withered_symbiont_intense_theme
execute unless entity @w[tag=Resummoned,distance=..500] run function explorers_eve:music/resummon/end
execute if entity @w[tag=BombLit,scores={StormPhase=..5}] unless entity @e[type=witherstormmod:formidibomb,distance=..500] run function explorers_eve:music/resummon/pause_bomb
execute unless entity @s[tag=ResummonedSymbiont] if entity @e[type=witherstormmod:withered_symbiont,tag=Resummoned,distance=..64] run function explorers_eve:music/resummon/symbiont_mark
execute if entity @s[tag=ResummonedSymbiont] unless entity @e[type=witherstormmod:withered_symbiont,tag=Resummoned,distance=..80] run function explorers_eve:music/resummon/symbiont_unmark
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/resummon/loop_pick