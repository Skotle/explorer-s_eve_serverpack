#Give it resistance so the fight lasts longer.
tag @s remove Phase3
tag @s add Phase4
tag @s remove Phase3Tantrum

stopsound @a[distance=..64] record explorers_eve:ur_ghast_theme_3
stopsound @a[distance=..64] record explorers_eve:ur_ghast_theme_3_intro
scoreboard players set @a[tag=UrGhastMusic,distance=..64] MusicTime 0