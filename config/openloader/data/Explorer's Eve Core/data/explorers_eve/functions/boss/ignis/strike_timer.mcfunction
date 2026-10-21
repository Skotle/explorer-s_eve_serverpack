#The strike gets bigger and bigger with time.
scoreboard players add @s Math 2
execute store result entity @s Radius float 0.1 run scoreboard players get @s Math

execute if entity @s[tag=Small,scores={Math=80..}] run tag @s remove IgnisStrike
execute if entity @s[tag=Medium,scores={Math=120..}] run tag @s remove IgnisStrike
execute if entity @s[tag=Large,scores={Math=160..}] run tag @s remove IgnisStrike
execute if entity @s[tag=Huge,scores={Math=200..}] run tag @s remove IgnisStrike