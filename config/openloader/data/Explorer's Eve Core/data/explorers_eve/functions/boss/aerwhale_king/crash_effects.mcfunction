#Spawn an Evil Whirlwind. For fun!
tag @s add AerwhaleCrashed
summon aether:evil_whirlwind ~ ~ ~ {"Life Left":600,Tags:["AerwhaleWhirlwind"]}
execute if entity @s[tag=Phase2] run summon aether:evil_whirlwind ~ ~ ~ {"Life Left":800,Tags:["AerwhaleWhirlwind"]}