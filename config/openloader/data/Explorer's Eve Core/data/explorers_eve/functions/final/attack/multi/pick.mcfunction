#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s StormAttackTime 0
execute if entity @s[tag=Phase11] run scoreboard players set @s StormAttackTime 3

execute at @p[tag=FinalBossTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

tag @e[tag=MultishotSource,limit=1,sort=random,distance=..300] add MultishotShoot
execute if entity @e[tag=MultishotShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=MultishotShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=MultishotShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=MultishotShoot,tag=SegmentReady] at @e[tag=MultishotShoot] run function explorers_eve:storm/attack/shoot_segment
kill @e[tag=MultishotShoot]

execute unless entity @a[tag=FinalBossTarget] run function explorers_eve:final/attack/multi/end
execute unless entity @e[tag=MultishotSource,distance=..64] run function explorers_eve:final/attack/multi/end