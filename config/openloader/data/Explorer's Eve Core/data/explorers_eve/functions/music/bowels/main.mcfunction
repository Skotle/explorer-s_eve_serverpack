#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_final_boss_theme
execute if entity @s[tag=CommandBattling] run function explorers_eve:music/bowels/end
execute if entity @s[gamemode=spectator] unless biome ~ ~ ~ witherstormmod:bowels run function explorers_eve:music/bowels/end
execute unless dimension witherstormmod:bowels run function explorers_eve:music/bowels/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/bowels/loop_pick