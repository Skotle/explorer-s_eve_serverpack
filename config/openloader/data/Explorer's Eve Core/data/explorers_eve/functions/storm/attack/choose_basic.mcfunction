#Pick a random attack. Note that the range is from 0-(n-1).
scoreboard players set @s StormAttackTime 0
tag @s remove AttackReady

scoreboard players set @s RandomRange 8
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue

execute if entity @s[tag=ForceScatter] run scoreboard players set @s SkullAttack 8
execute if entity @s[scores={SkullAttack=6..},tag=!Resummoned] if entity @a[gamemode=!spectator,distance=..80] run scoreboard players set @s SkullAttack 4
execute if entity @s[scores={StormPhase=4},tag=!Phase4Progress,tag=!Resummoned] run scoreboard players set @s SkullAttack 0
execute if score @s SkullAttack matches 4..5 at @p[gamemode=!spectator] if entity @a[predicate=explorers_eve:effect/invisibility,distance=..3] run scoreboard players set @s SkullAttack 3
execute if entity @e[tag=SymbiontBattleStart,distance=..300] if score @s SkullAttack matches 4..5 run scoreboard players set @s SkullAttack 3
execute if entity @e[tag=SymbiontBattleStart,distance=..300] unless entity @s[tag=Resummoned] run scoreboard players set @s SkullAttack 1

#If the player is in water, override everything and just attack directly.
execute at @p[gamemode=!spectator] if block ~ ~ ~ water run scoreboard players set @s SkullAttack 0
execute at @p[gamemode=!spectator] if block ~ ~-1 ~ water run scoreboard players set @s SkullAttack 0

#Try to face the player, then run whatever attack was chosen.
execute at @p[gamemode=!spectator] unless entity @a[tag=InBeam,distance=..3] at @s run function explorers_eve:storm/face_player
execute if score @s StormPhase matches 6.. as @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=2] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute if entity @s[scores={SkullAttack=..3}] run function explorers_eve:storm/attack/multi/start
execute if entity @s[scores={SkullAttack=4..5}] run function explorers_eve:storm/attack/cutoff/start
execute if entity @s[scores={SkullAttack=6..}] run function explorers_eve:storm/attack/scatter/start