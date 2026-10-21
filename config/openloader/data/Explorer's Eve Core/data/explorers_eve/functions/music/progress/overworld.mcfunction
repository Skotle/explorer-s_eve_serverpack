#Play the track, and time it to prevent other music for a while.
function explorers_eve:music/progress/end
tag @s[tag=!NullMusic] add ProgressMusic
playsound explorers_eve:progress.overworld record @s ~ ~ ~ 0.75 1 0.75
scoreboard players set @s MusicTime 2474