#Update the Wither Storm's phase and tag it.
tag @s add Phase6Progress
witherstormmod phase set @s 6.5
tag @a[tag=ProgressMusic] remove MusicPlaying
execute as @a[tag=!MusicPlaying] at @s run function explorers_eve:music/progress/command_parts_single