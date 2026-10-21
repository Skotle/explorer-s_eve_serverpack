#Spawn a huge fancy rune circle thing.
execute if entity @s[tag=Phase1] run summon cataclysm:flame_strike ~ ~ ~ {Tags:["IgnisStrike","Small"],Radius:1f,is_soul:0b,WaitTime:100}
execute if entity @s[tag=Phase2] run summon cataclysm:flame_strike ~ ~ ~ {Tags:["IgnisStrike","Medium"],Radius:1f,is_soul:1b,WaitTime:100}
execute if entity @s[tag=Phase3] run summon cataclysm:flame_strike ~ ~ ~ {Tags:["IgnisStrike","Large"],Radius:1f,is_soul:1b,WaitTime:120}

execute as @e[tag=IgnisStrike] run data modify entity @s Owner set from entity @e[type=cataclysm:ignis,limit=1,sort=nearest] UUID

fill ~-10 ~-4 ~-10 ~10 ~2 ~10 air replace aether:blue_aercloud

playsound cataclysm:flame_burst hostile @a ~ ~ ~ 2 1.5
tag @s remove IgnisJump