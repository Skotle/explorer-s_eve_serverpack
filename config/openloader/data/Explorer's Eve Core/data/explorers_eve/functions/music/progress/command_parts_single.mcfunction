#Play the track, and time it to prevent other music for a while.
function explorers_eve:music/progress/end
tag @s[tag=!NullMusic] add ProgressMusic
playsound explorers_eve:progress.command_parts_single record @s ~ ~ ~ 0.85 1 0.85
scoreboard players set @s MusicTime 2520