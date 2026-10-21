#End with a bang!
tag @s remove GlitchMusic
tag @s remove GlitchIntro
tag @s remove GlitchFinal
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:glitch_theme
stopsound @s record explorers_eve:glitch_theme_intro
stopsound @s record explorers_eve:glitch_theme_final
playsound explorers_eve:final_theme_end record @s ~ ~ ~ 1 1 1