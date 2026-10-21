#End with a bang!
tag @s remove BowelsMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:bowels_theme
stopsound @s record explorers_eve:bowels_theme_alt
playsound explorers_eve:bowels_theme_end record @s ~ ~ ~ 1 1 1

execute if entity @e[type=witherstormmod:command_block,predicate=explorers_eve:bowels,distance=..80] run function explorers_eve:music/command_block/mark