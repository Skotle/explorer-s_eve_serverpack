#Tag the player so it's clear who they're fighting.
tag @s add MusicPlaying
tag @s[tag=!NullMusic] add CommandMusic
scoreboard players set @s MusicTime 0
stopsound @s record explorers_eve:command_block_theme_end