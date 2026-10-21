#Begin a chase.
witherstormmod ultimateTarget distractions makeFocused @w
witherstormmod ultimateTarget chase begin @w

#Pretty lights!
playsound blue_skies:entity.alchemist.prepare_conversion player @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.alchemist.prepare_blindness player @a ~ ~ ~ 1 1.5
playsound witherstormmod:wither_storm_evolves hostile @a[distance=..256] ~ ~ ~ 25 1 1
particle blue_skies:star_flare 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 100