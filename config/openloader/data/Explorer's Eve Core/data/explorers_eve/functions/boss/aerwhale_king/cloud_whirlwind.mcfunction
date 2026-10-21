#Tag the AEC, and if it's really a cloud puddle, spawn a pest.
tag @s add CloudChecked
execute if entity @s[nbt={Particle:"minecraft:cloud"}] at @s run summon aether:whirlwind ~ ~ ~ {"Life Left":500,Tags:["AerwhaleWhirlwind"]}