#Pick a random attack.
scoreboard players set @s StormAttackTime 0
tag @s remove AttackReady

scoreboard players set @s RandomRange 4
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue

#Try to face the player, then run whatever attack was chosen.
execute at @p[gamemode=!spectator] unless entity @a[tag=InBeam,distance=..3] at @s run function explorers_eve:storm/face_player
execute as @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=2] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute at @p[gamemode=!spectator] if block ~ ~ ~ water run scoreboard players set @s SkullAttack -1
execute at @p[gamemode=!spectator] if block ~ ~-1 ~ water run scoreboard players set @s SkullAttack -1
execute if score @s SkullAttack matches 2..3 if entity @a[gamemode=!spectator,distance=..80] unless entity @s[tag=Resummoned] run scoreboard players set @s SkullAttack 0
execute if score @s SkullAttack matches -1 run function explorers_eve:storm/attack/line/start
execute if score @s SkullAttack matches 0..1 run function explorers_eve:storm/attack/quake/start
execute if score @s SkullAttack matches 2..3 run function explorers_eve:storm/attack/scatter/start