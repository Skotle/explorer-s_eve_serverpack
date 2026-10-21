#End with a bang!
tag @s remove SorcererMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:sorcerer_theme_intro
stopsound @s record explorers_eve:sorcerer_theme
playsound explorers_eve:sorcerer_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove SorcererIntro