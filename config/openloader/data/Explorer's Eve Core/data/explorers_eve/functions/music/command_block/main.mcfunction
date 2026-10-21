#Loop if needed, or stop if that's better.
stopsound @s record witherstormmod:wither_storm_final_boss_theme
execute unless entity @e[type=witherstormmod:command_block,distance=..160] run function explorers_eve:music/command_block/end
execute unless entity @s[tag=CommandBattling] if biome ~ ~ ~ witherstormmod:bowels run function explorers_eve:music/command_block/end
execute if entity @s[scores={MusicTime=..-1}] run function explorers_eve:music/command_block/loop_pick