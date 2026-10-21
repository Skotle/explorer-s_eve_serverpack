#Give it resistance so the fight lasts longer.
tag @s remove Phase2
tag @s add Phase3
playsound twilightforest:entity.twilightforest.hydra.roar hostile @a ~ ~ ~ 3 1.5
particle minecraft:angry_villager ~ ~5 ~ 5 5 5 1 100

stopsound @a[distance=..40] record explorers_eve:hydra_theme_2
scoreboard players set @a[tag=HydraMusic,distance=..40] MusicTime 0