#Check how far away the target is and adjust the skull speed accordingly. Always execute this at the target, not the source.
execute if entity @s[distance=..50] run scoreboard players remove @s SkullSpeedMultiplier 2
execute if entity @s[distance=..100] run scoreboard players remove @s SkullSpeedMultiplier 2
execute if entity @s[distance=150..] run scoreboard players add @s SkullSpeedMultiplier 5
execute if entity @s[distance=250..] run scoreboard players add @s SkullSpeedMultiplier 10