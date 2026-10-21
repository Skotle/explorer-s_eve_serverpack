#Reset skull attack timer.
scoreboard players set @s RandomRange 2
function explorers_eve:random
scoreboard players operation @s StormAttackWait = @s RandomValue
scoreboard players add @s StormAttackWait 3

scoreboard players set @s StormAttackTime 0

#Tag a target and face them.
tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=FinalBattling]
execute at @p[gamemode=!spectator,tag=FinalBattling] unless block ~ ~ ~ water unless block ~ ~-1 ~ water run tag @s add ScattershotPossible

#Pick a random attack.
scoreboard players set @s RandomRange 10
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue
tag @s add FinalBossSegmentAttacking

#No target? No attack.
execute unless entity @a[gamemode=!spectator,tag=FinalBattling] run function explorers_eve:final/attack/segment/cancel

execute if score @s SkullAttack matches 0..2 run function explorers_eve:final/attack/segment/barrage/start
execute if score @s SkullAttack matches 3..6 run function explorers_eve:final/attack/segment/line/start
execute if score @s SkullAttack matches 7..9 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/segment/barrage/start
execute if score @s SkullAttack matches 7..9 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/segment/scatter/start

tag @s remove ScattershotPossible
tag @s remove RotateSuccess