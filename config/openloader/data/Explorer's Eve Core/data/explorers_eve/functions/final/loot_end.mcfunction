#Dispose of the marker and play music.
execute as @a[distance=..600,tag=!MusicPlaying] at @s run function explorers_eve:music/progress/glitch_victory
execute as @a[tag=FinalBattleLoot] at @s run function explorers_eve:item/elytra_spawn
kill @s