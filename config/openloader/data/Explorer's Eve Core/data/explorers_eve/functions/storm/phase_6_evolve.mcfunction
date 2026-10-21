#Finally evolve to phase 7.
tag @s remove Phase6Progress
witherstormmod phase set @s 7
tag @a[tag=ProgressMusic] remove MusicPlaying
execute as @a[tag=!MusicPlaying] at @s run function explorers_eve:music/progress/command_parts_all