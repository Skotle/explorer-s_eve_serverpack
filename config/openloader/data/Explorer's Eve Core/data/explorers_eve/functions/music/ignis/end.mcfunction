#End with a bang!
tag @s remove IgnisMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:ignis_theme_1_intro
stopsound @s record explorers_eve:ignis_theme_1
stopsound @s record explorers_eve:ignis_theme_2
stopsound @s record explorers_eve:ignis_theme_2_alt
stopsound @s record explorers_eve:ignis_theme_3_intro
stopsound @s record explorers_eve:ignis_theme_3
playsound explorers_eve:ignis_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove IgnisIntro1
tag @s remove IgnisIntro3
tag @s remove Ignis2Main
tag @s remove Ignis2Alt