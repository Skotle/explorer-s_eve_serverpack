#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s StormAttackTime 0
execute if entity @s[tag=SlowAttack] run scoreboard players set @s StormAttackTime -17

execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}
execute at @p[gamemode=!spectator] if entity @a[predicate=explorers_eve:effect/invisibility,distance=..3] run spreadplayers ~ ~ 0 10 false @e[tag=SkullTarget,limit=1,sort=nearest]
execute as @p[gamemode=!spectator] if predicate explorers_eve:boat at @s rotated as @e[type=#explorers_eve:boat,limit=1,sort=nearest,distance=..4] positioned ^ ^ ^24 run tp @e[tag=SkullTarget,limit=1,sort=nearest] ~ ~ ~

tag @e[tag=MultishotSource,limit=1,sort=random,distance=..300] add MultishotShoot
execute if entity @e[tag=MultishotShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=MultishotShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=MultishotShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=MultishotShoot,tag=SegmentReady] at @e[tag=MultishotShoot] run function explorers_eve:storm/attack/shoot_segment
kill @e[tag=MultishotShoot]

execute unless entity @e[tag=MultishotSource] run function explorers_eve:storm/attack/multi/end