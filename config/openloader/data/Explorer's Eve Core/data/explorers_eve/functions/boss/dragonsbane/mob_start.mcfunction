#Delay before the next spawns.
scoreboard players set @s RandomRange 300
function explorers_eve:random
scoreboard players operation @s DragonsbaneMobWait = @s RandomValue
scoreboard players add @s DragonsbaneMobWait 600

#Summon markers, then move them.
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["DragonsbaneMobMark"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["DragonsbaneMobMark"]}

#Move them based on what phase the fight's in.
execute if entity @s[tag=Phase1] as @e[tag=DragonsbaneMobMark,distance=..4] run function explorers_eve:boss/dragonsbane/mark_move_arena
execute if entity @s[tag=Phase2] as @e[tag=DragonsbaneMobMark,distance=..4] at @r[gamemode=!spectator,distance=..128] run function explorers_eve:boss/dragonsbane/mark_move_player

#For each marker, either spawn a slime or fire beetle.
execute as @e[tag=DragonsbaneMobMark] at @s positioned ~ ~-1.95 ~ run function explorers_eve:boss/dragonsbane/mob_choose

#And effects!
playsound blue_skies:entity.alchemist.prepare_rocks hostile @a ~ ~ ~ 1 1