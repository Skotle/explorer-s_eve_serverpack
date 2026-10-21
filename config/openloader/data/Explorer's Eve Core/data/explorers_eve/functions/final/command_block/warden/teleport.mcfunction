#Reset timer.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s WardenTeleportTime = @s RandomValue
scoreboard players add @s WardenTeleportTime 300

#Visual and audio effects!
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 4
particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100

#Make a marker and move to it.
summon marker ~ ~ ~ {Tags:[WardenMark]}
execute unless entity @s[tag=WardenBarrage] as @e[tag=WardenMark] at @p[gamemode=!spectator,distance=..200] run function explorers_eve:final/command_block/warden/teleport_near
execute if entity @s[tag=WardenBarrage] as @e[tag=WardenMark] at @p[gamemode=!spectator,distance=..200] run function explorers_eve:final/command_block/warden/teleport_far
tp @s @e[tag=WardenMark,limit=1,sort=nearest]
kill @e[tag=WardenMark]
effect give @s weakness 2 10 true

#Visual and audio effects!
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 4
execute at @s run particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100