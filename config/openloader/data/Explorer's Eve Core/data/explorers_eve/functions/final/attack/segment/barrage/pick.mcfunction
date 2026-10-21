#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s StormAttackTime 0

execute at @p[gamemode=!spectator,tag=FinalBattling] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

function explorers_eve:storm/attack/shoot_segment

execute unless entity @e[tag=BarrageSegmentSource,distance=..50] run function explorers_eve:final/attack/segment/barrage/end