#It moves!
summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["DragonsbaneDigMark"]}
execute if entity @s[tag=Phase1] as @e[tag=DragonsbaneDigMark,limit=1,sort=nearest] run function explorers_eve:boss/dragonsbane/mark_move_arena
execute if entity @s[tag=Phase2] as @e[tag=DragonsbaneDigMark,limit=1,sort=nearest] at @r[gamemode=!spectator,distance=..128] run function explorers_eve:boss/dragonsbane/mark_move_player
execute at @e[tag=DragonsbaneDigMark,limit=1,sort=nearest] run tp @s ~ ~-1.75 ~ facing entity @p[gamemode=!spectator] eyes

#Make sure it won't die while digging!
tag @s remove DragonsbaneBurrow
tag @s add DragonsbaneEmerge
scoreboard players set @s DragonsbaneDigTime 50