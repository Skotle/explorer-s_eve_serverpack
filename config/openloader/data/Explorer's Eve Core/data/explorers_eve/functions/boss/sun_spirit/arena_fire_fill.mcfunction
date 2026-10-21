#Fill the arena with fire.
execute if entity @s[tag=ArenaFireCenter] run fill ~-8 ~-1 ~-8 ~8 ~5 ~8 fire replace air
execute if entity @s[tag=ArenaFireEdge] run fill ~-11 ~-1 ~-11 ~11 ~5 ~11 fire replace air
execute if entity @s[tag=ArenaFireEdge] run fill ~-7 ~-1 ~-7 ~7 ~5 ~7 air replace fire

playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2
kill @s