#Play the track, and time it to prevent other music for a while.
function explorers_eve:music/progress/end
tag @s[tag=!NullMusic] add ProgressMusic
playsound explorers_eve:progress.glitch_victory record @s ~ ~ ~ 1 1 1
scoreboard players set @s MusicTime 1561