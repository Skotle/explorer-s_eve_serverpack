#Make sure it won't die while digging!
tag @s remove DragonsbaneDigging
tag @s remove DragonsbaneEmerge
data merge entity @s {Invulnerable:0b,NoAI:0b}

#If this is the stalk spawn, be loud!
execute if entity @s[tag=StalkSpawn] run playsound blue_skies:entity.arachnarch.screech hostile @a ~ ~ ~ 1 1.2
tag @s remove StalkSpawn

function explorers_eve:boss/dragonsbane/lunge_player