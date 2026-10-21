#Check how far away the target is and adjust the skull speed accordingly. This should always be executed at the target, not the source.
execute if entity @s[distance=..80] run scoreboard players remove @s SkullSpeedMultiplier 3
execute if entity @s[distance=..100] run scoreboard players remove @s SkullSpeedMultiplier 5
execute if entity @s[distance=150..] run scoreboard players add @s SkullSpeedMultiplier 5
execute if entity @s[distance=250..] run scoreboard players add @s SkullSpeedMultiplier 10
execute if entity @s[tag=Resummoned] run scoreboard players add @s SkullSpeedMultiplier 3
execute if entity @p[gamemode=!spectator,predicate=explorers_eve:boat,distance=..2] run scoreboard players add @s SkullSpeedMultiplier 10