#Give it resistance so the fight lasts longer.
tag @s remove Phase4
tag @s add Phase5
tag @s remove Phase4Tantrum

stopsound @a[distance=..64] record explorers_eve:ur_ghast_theme_4
scoreboard players set @a[tag=UrGhastMusic,distance=..64] MusicTime 0