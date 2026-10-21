#End with a bang!
tag @s remove EnderGuardianMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:ender_guardian_theme_1_intro
stopsound @s record explorers_eve:ender_guardian_theme_1
stopsound @s record explorers_eve:ender_guardian_theme_2_intro
stopsound @s record explorers_eve:ender_guardian_theme_2
playsound explorers_eve:ender_guardian_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove EnderIntro1
tag @s remove EnderIntro2