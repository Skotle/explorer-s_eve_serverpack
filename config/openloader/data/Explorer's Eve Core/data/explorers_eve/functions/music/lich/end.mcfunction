#End with a bang!
tag @s remove LichMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:lich_theme_1
stopsound @s record explorers_eve:lich_theme_2
playsound explorers_eve:lich_theme_end record @s ~ ~ ~ 1 1 1