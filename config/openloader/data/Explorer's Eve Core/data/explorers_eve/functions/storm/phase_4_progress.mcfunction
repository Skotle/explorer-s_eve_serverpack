#Give the Storm a boost to how much it's consumed, also tag it, also update that flight height.
tag @s add Phase4Progress
tag @s add Phase4EscapeTrack
witherstormmod phase set @s 4.5
witherstormmod config server set server.misc.flyingHeight 30
execute as @a[distance=1..,tag=!MusicPlaying,tag=!ProgressMusic] at @s run function explorers_eve:music/progress/echo_shard