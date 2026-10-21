#End with a bang!
tag @s remove SunSpiritMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:sun_spirit_theme_1
stopsound @s record explorers_eve:sun_spirit_theme_2
playsound explorers_eve:sun_spirit_theme_end record @s ~ ~ ~ 1 1 1