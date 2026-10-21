#Remove the map and give a new one.
clear @s carrot_on_a_stick{IOURuinsMap:1b} 1
loot give @s loot explorers_eve:reanimated_ruins_map
playsound blue_skies:entity.alchemist.prepare_conversion player @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.alchemist.prepare_blindness player @a ~ ~ ~ 1 1.5
particle blue_skies:star_flare 0.9 0.9 0.9 ~ ~1 ~ 0.25 0.5 0.25 0.1 100