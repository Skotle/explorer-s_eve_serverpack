#End with a bang!
tag @s remove HarbingerMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:harbinger_theme_intro
stopsound @s record explorers_eve:harbinger_theme
playsound explorers_eve:harbinger_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove HarbingerIntro