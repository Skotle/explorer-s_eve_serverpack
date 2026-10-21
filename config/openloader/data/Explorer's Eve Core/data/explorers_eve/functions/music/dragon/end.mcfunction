#End with a bang!
tag @s remove DragonMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:dragon_theme_1_intro
stopsound @s record explorers_eve:dragon_theme_1
stopsound @s record explorers_eve:dragon_theme_2_intro
stopsound @s record explorers_eve:dragon_theme_2
stopsound @s record explorers_eve:dragon_theme_3_intro
stopsound @s record explorers_eve:dragon_theme_3
playsound explorers_eve:dragon_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove DragonIntro1
tag @s remove DragonIntro2
tag @s remove DragonIntro3