#End with a bang!
tag @s remove UrGhastMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:ur_ghast_theme_1_intro
stopsound @s record explorers_eve:ur_ghast_theme_1
stopsound @s record explorers_eve:ur_ghast_theme_2
stopsound @s record explorers_eve:ur_ghast_theme_3_intro
stopsound @s record explorers_eve:ur_ghast_theme_3
stopsound @s record explorers_eve:ur_ghast_theme_4
stopsound @s record explorers_eve:ur_ghast_theme_5
playsound explorers_eve:ur_ghast_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove UrGhastIntro1
tag @s remove UrGhastIntro3