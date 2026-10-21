#Play the track, and time it to prevent other music for a while.
function explorers_eve:music/progress/end
tag @s[tag=!NullMusic] add ProgressMusic
playsound explorers_eve:progress.phase_4 record @s ~ ~ ~ 0.75 1 0.75
scoreboard players set @s MusicTime 3076