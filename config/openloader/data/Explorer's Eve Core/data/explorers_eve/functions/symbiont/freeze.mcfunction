#Freezes water and lava, teleports the Symbiont on top, and makes a neat noise.
fill ~25 ~ ~25 ~-25 ~ ~-25 ice replace water
fill ~25 ~ ~25 ~-25 ~ ~-25 obsidian replace lava
fill ~25 ~ ~25 ~-25 ~ ~-25 deep_aether:aersmog replace deep_aether:poison
tp ~ ~1 ~
data modify entity @s Motion[1] set value 0.5d
playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 5 1.25