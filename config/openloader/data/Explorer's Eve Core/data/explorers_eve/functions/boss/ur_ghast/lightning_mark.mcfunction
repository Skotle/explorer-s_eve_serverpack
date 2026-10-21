#Summon a pile of markers. How many? This many!
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 3
execute if entity @s[tag=FinalBattle] run scoreboard players add @s Math 8

#Then spawn them all and spread them around.
function explorers_eve:boss/ur_ghast/lightning_mark_spawn
execute unless entity @s[tag=FinalBattle] at @e[tag=UrGhastTracker,limit=1,sort=nearest] run spreadplayers ~ ~ 4 9 false @e[tag=GhastLightningMark,distance=..120]
execute if entity @s[tag=FinalBattle] at @p[gamemode=!spectator] run spreadplayers ~ ~ 4 24 false @e[tag=GhastLightningMark,distance=..120]

#Do the same thing for all of the ghast traps, too!
execute at @e[tag=GhastTrap,distance=..64] if entity @a[distance=..10] run summon area_effect_cloud ~ ~ ~ {Tags:["GhastLightningMark"],Duration:200}
execute at @e[tag=GhastTrap,distance=..64] if entity @a[distance=..10] run summon area_effect_cloud ~ ~ ~ {Tags:["GhastLightningMark"],Duration:200}
execute at @e[tag=GhastTrap,distance=..64] run spreadplayers ~ ~ 3 5 false @e[tag=GhastLightningMark,distance=..3]

#Then get them all on the same y level.
execute unless entity @s[tag=FinalBattle] as @e[tag=GhastLightningMark] store result entity @s Pos[1] double 1 run data get entity @e[tag=UrGhastTracker,limit=1,sort=nearest] Pos[1]

#Always spawn one on the player, too!
execute as @a[gamemode=!spectator,distance=..64] at @s unless entity @e[tag=GhastLightningMark,distance=..2] run summon area_effect_cloud ~ ~ ~ {Tags:["GhastLightningMark"],Duration:200}
execute as @a[gamemode=!spectator,distance=..64] at @s run spreadplayers ~ ~ 0 2 false @e[tag=GhastLightningMark,distance=..2,limit=1]
execute as @a[gamemode=!spectator,distance=..64] at @s as @e[tag=GhastLightningMark,limit=1,sort=nearest] store result entity @s Pos[1] double 1 run data get entity @p[gamemode=!spectator] Pos[1] 

#Lastly, reset the timer.
scoreboard players set @s RandomRange 600
function explorers_eve:random
scoreboard players operation @s GhastLightningTime = @s RandomValue
scoreboard players add @s GhastLightningTime 1000