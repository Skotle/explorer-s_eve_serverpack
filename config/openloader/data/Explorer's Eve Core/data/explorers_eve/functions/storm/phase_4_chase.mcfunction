#Force the Storm to chase the player, and reset early phase data.
function explorers_eve:storm/early_data_clear
witherstormmod ultimateTarget chase begin @s
data modify entity @s TargetRunawayAttempts set value 0
execute as @a[distance=1..,tag=!MusicPlaying] at @s run function explorers_eve:music/progress/phase_4