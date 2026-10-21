#End with a bang!
tag @s remove AlphaYetiMusic
tag @s remove YetiIntro
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:alpha_yeti_theme
stopsound @s record explorers_eve:alpha_yeti_theme_intro
playsound explorers_eve:alpha_yeti_theme_end record @s ~ ~ ~ 1 1 1