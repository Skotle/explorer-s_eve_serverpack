#End with a bang!
tag @s remove NetheriteMonstrosityMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:netherite_monstrosity_theme_1_intro
stopsound @s record explorers_eve:netherite_monstrosity_theme_1
stopsound @s record explorers_eve:netherite_monstrosity_theme_2
stopsound @s record explorers_eve:netherite_monstrosity_theme_3_intro
stopsound @s record explorers_eve:netherite_monstrosity_theme_3
playsound explorers_eve:netherite_monstrosity_theme_end record @s ~ ~ ~ 1 1 1
tag @s remove NetheriteMonstrosityIntro1
tag @s remove NetheriteMonstrosityIntro3