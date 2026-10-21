#End with a bang!
tag @s remove HydraMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:hydra_theme_1_intro
stopsound @s record explorers_eve:hydra_theme_1
stopsound @s record explorers_eve:hydra_theme_2
stopsound @s record explorers_eve:hydra_theme_3
playsound explorers_eve:hydra_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove HydraIntro