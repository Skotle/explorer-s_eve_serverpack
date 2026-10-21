#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s StormAttackTime 0
execute if entity @s[scores={StormPhase=6..}] run scoreboard players add @s StormAttackTime 2
execute if entity @s[tag=SlowAttack] run scoreboard players set @s StormAttackTime -1

execute at @p[gamemode=!spectator] run spreadplayers ~ ~ 0 20 false @e[tag=ScattershotTarget]
execute if entity @s[tag=Phase6Chase] at @p[gamemode=!spectator] run spreadplayers ~ ~ 0 30 false @e[tag=ScattershotTarget]
execute at @e[tag=ScattershotTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

tag @e[tag=ScattershotSource,limit=1,sort=random,distance=..300] add ScattershotShoot
execute if entity @e[tag=ScattershotShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=ScattershotShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=ScattershotShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=ScattershotShoot,tag=SegmentReady] at @e[tag=ScattershotShoot] run function explorers_eve:storm/attack/shoot_segment
tag @e[tag=ScattershotShoot] remove ScattershotShoot

execute unless entity @e[tag=ScattershotTarget] run function explorers_eve:storm/attack/scatter/end