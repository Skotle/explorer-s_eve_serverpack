#Give it resistance so the fight lasts longer.
tag @s remove Phase1
tag @s add Phase2
tag @s add TantrumWait

stopsound @a[distance=..64] record explorers_eve:ur_ghast_theme_1
stopsound @a[distance=..64] record explorers_eve:ur_ghast_theme_1_intro
scoreboard players set @a[tag=UrGhastMusic,distance=..64] MusicTime 0