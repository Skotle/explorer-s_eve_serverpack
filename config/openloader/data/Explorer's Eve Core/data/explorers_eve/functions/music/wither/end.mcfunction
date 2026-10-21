#End with a bang!
tag @s remove WitherMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:wither_theme
playsound explorers_eve:wither_theme_end record @s ~ ~ ~ 1 1 1