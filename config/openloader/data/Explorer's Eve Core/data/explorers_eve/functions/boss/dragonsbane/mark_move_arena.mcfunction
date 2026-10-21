#First, move the mark to the arena's corner.
execute at @e[tag=DragonsbaneArena,limit=1,sort=nearest] run tp @s ~-7 ~ ~-7

#Generate new X and Z coordinates.
scoreboard players set @s RandomRange 15
function explorers_eve:random
execute store result score @s Math run data get entity @s Pos[0] 
scoreboard players operation @s Math += @s RandomValue
execute store result entity @s Pos[0] double 1 run scoreboard players get @s Math

scoreboard players set @s RandomRange 15
function explorers_eve:random
execute store result score @s Math run data get entity @s Pos[2] 
scoreboard players operation @s Math += @s RandomValue
execute store result entity @s Pos[2] double 1 run scoreboard players get @s Math

scoreboard players add @s HintTime 1
execute at @s unless block ~ ~ ~ #explorers_eve:dragonsbane_air_like if block ~ ~1 ~ #explorers_eve:dragonsbane_air_like run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #explorers_eve:dragonsbane_air_like unless score @s HintTime matches 30.. run function explorers_eve:boss/dragonsbane/mark_move_arena
execute if score @s HintTime matches 30.. at @e[tag=DragonsbaneBoss,limit=1,sort=nearest] run tp @s @p[gamemode=!spectator]