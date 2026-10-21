#Setup for the quake attack.
tag @s add QuakeActive

playsound witherstormmod:bowels_loud_hurt hostile @a[distance=..300] ~ ~ ~ 1 1.5 1
scoreboard players set @s StormAttackTime 0
scoreboard players set @s Math 0
scoreboard players set @s RandomRange 4
function explorers_eve:random
execute if entity @s[scores={RandomValue=..1}] at @p[gamemode=!spectator] rotated ~ 0 run function explorers_eve:storm/attack/quake/mark_circle
execute if entity @s[scores={RandomValue=2..}] at @p[gamemode=!spectator] run function explorers_eve:storm/attack/quake/mark_spread
execute if entity @s[scores={RandomValue=..1}] at @p[gamemode=!spectator] run kill @e[tag=QuakeMark,limit=8,sort=random]
execute as @e[tag=QuakeMark,distance=..400] at @s if block ~ ~ ~ air positioned ~ ~-1 ~ run function explorers_eve:storm/attack/quake/mark_down
execute as @e[tag=QuakeMark,distance=..400] at @s unless block ~ ~ ~ air positioned ~ ~1 ~ run function explorers_eve:storm/attack/quake/mark_up