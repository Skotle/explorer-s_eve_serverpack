#End with a bang!
tag @s remove NagaMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:naga_theme_1_intro
stopsound @s record explorers_eve:naga_theme_1
stopsound @s record explorers_eve:naga_theme_2_intro
stopsound @s record explorers_eve:naga_theme_2
playsound explorers_eve:naga_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove NagaIntro1
tag @s remove NagaIntro2