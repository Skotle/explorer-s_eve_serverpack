#End with a bang!
tag @s remove AerwhaleMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:aerwhale_king_theme_1_intro
stopsound @s record explorers_eve:aerwhale_king_theme_1
stopsound @s record explorers_eve:aerwhale_king_theme_2_intro
stopsound @s record explorers_eve:aerwhale_king_theme_2
playsound explorers_eve:aerwhale_king_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove AerwhaleIntro1
tag @s remove AerwhaleIntro2