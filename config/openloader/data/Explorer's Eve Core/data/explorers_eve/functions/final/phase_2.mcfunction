#Phase transition!
tag @s remove Phase1
tag @s add Phase2

tag @s add FinalBossActive
tag @s add ForceScatter

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1_intro
stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1
scoreboard players set @a[tag=FinalMusic] MusicTime 0