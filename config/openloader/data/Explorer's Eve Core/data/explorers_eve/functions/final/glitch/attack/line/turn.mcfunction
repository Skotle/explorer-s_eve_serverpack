#Pick a new angle.
scoreboard players set @s RandomRange 5
function explorers_eve:random

execute if score @s RandomValue matches 0 as @e[tag=CommandRide,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~-0.5 ~ ~ 0
execute if score @s RandomValue matches 1 as @e[tag=CommandRide,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~-0.5 ~ ~20 0
execute if score @s RandomValue matches 2 as @e[tag=CommandRide,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~-0.5 ~ ~-20 0
execute if score @s RandomValue matches 3 as @e[tag=CommandRide,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~-0.5 ~ ~40 0
execute if score @s RandomValue matches 4 as @e[tag=CommandRide,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~-0.5 ~ ~-40 0

#Also, decide if maybe it's best to just throw this all out.
scoreboard players remove @s GlitchLineTurns 1
scoreboard players set @s GlitchAttackTime 0
execute if score @s GlitchLineTurns matches ..0 run function explorers_eve:final/glitch/attack/line/end