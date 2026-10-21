#End with a bang!
tag @s remove EmpowerMusic
tag @s remove MusicPlaying
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:empower_theme_1
stopsound @s record explorers_eve:empower_theme_2
stopsound @s record explorers_eve:empower_theme_3
stopsound @s record explorers_eve:empower_theme_4
execute unless data storage world FinalBossCheckpoint1 run playsound explorers_eve:empower_theme_end record @s ~ ~ ~ 1 1 1