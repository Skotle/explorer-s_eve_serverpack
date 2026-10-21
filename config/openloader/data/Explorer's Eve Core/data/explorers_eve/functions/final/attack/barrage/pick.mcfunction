#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s StormAttackTime 0
execute if entity @s[tag=FinalBossIdle] run scoreboard players set @s StormAttackTime -1
execute if entity @s[tag=Phase11] run scoreboard players set @s StormAttackTime 2

execute at @p[tag=FinalBossTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

tag @e[tag=BarrageSource,limit=1,sort=random,distance=..300] add BarrageShoot
execute if entity @e[tag=BarrageShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=BarrageShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=BarrageShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=BarrageShoot,tag=SegmentReady] at @e[tag=BarrageShoot] run function explorers_eve:storm/attack/shoot_segment
tag @e[tag=BarrageShoot] remove BarrageShoot

execute unless entity @a[tag=FinalBossTarget] run function explorers_eve:final/attack/barrage/end
execute unless entity @e[tag=BarrageSource,distance=..300] run function explorers_eve:final/attack/barrage/end