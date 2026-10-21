#Tag a target and face them.
tag @p[gamemode=!spectator,tag=FinalBattling,tag=!InBeam,distance=..250] add FinalBossTarget
witherstormmod ultimateTarget set @s @p[tag=FinalBossTarget]
execute if entity @p[tag=FinalBossTarget] run function explorers_eve:final/attack/face_player
execute if entity @s[tag=SegmentsWeak] as @e[type=witherstormmod:wither_storm_segment,sort=nearest,limit=2] at @s run tp @s ~ ~ ~ facing entity @p[tag=FinalBossTarget]
execute at @p[tag=FinalBossTarget] unless block ~ ~ ~ water unless block ~ ~-1 ~ water run tag @s add ScattershotPossible

#Pick a random attack.
scoreboard players set @s RandomRange 10
function explorers_eve:random
scoreboard players operation @s SkullAttack = @s RandomValue
tag @s add FinalBossAttacking

#Boost this number to match about what part of the fight is happening.
execute if entity @s[tag=Phase1] run scoreboard players add @s SkullAttack 10
execute if entity @s[tag=Phase2] run scoreboard players add @s SkullAttack 20
execute if entity @s[tag=Phase3] run scoreboard players add @s SkullAttack 20
execute if entity @s[tag=Phase4] run scoreboard players add @s SkullAttack 30
execute if entity @s[tag=Phase5] run scoreboard players add @s SkullAttack 30
execute if entity @s[tag=Phase6] run scoreboard players add @s SkullAttack 30
execute if entity @s[tag=Phase7] run scoreboard players add @s SkullAttack 40
execute if entity @s[tag=Phase8] run scoreboard players add @s SkullAttack 50
execute if entity @s[tag=Phase9] run scoreboard players add @s SkullAttack 60
execute if entity @s[tag=Phase10] run scoreboard players add @s SkullAttack 70
execute if entity @s[tag=Phase11] run scoreboard players add @s SkullAttack 80

#No target? No attack.
execute unless entity @a[tag=FinalBossTarget] run function explorers_eve:final/attack/cancel

#Then pick an attack. If Scattershot is forced, use it.
execute if entity @s[tag=ForceScatter,tag=ScattershotPossible] run scoreboard players set @s SkullAttack -1
execute if score @s SkullAttack matches -1 run function explorers_eve:final/attack/scatter/start

#First phase.
execute if score @s SkullAttack matches 10..14 run function explorers_eve:final/attack/multi/start
execute if score @s SkullAttack matches 15..19 run function explorers_eve:final/attack/line/start

#Without segments.
execute if score @s SkullAttack matches 20..22 run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 23..27 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 28..29 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 28..29 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

#With weak segments.
execute if score @s SkullAttack matches 30..31 run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 32..34 run function explorers_eve:final/attack/lightning/start
execute if score @s SkullAttack matches 35..36 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 37..39 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 37..39 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

#With strong segments.
execute if score @s SkullAttack matches 40..45 run function explorers_eve:final/attack/lightning/start
execute if score @s SkullAttack matches 46..47 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 48..49 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/lightning/start
execute if score @s SkullAttack matches 48..49 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

#Glitch tier 1 and 2.
execute if score @s SkullAttack matches 50..52 run function explorers_eve:final/attack/multi/start
execute if score @s SkullAttack matches 53..54 run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 55..57 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 58..59 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 58..59 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

#Glitch tier 3.
execute if score @s SkullAttack matches 60..62 run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 63..67 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 68..69 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 68..69 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

#Glitch tier 4 (Ignis).
execute if score @s SkullAttack matches 70..72 run function explorers_eve:final/attack/multi/start
execute if score @s SkullAttack matches 73..74 run function explorers_eve:final/attack/barrage/start
execute if score @s SkullAttack matches 75..79 run function explorers_eve:final/attack/line/start

#Glitch panic sequence.
execute if score @s SkullAttack matches 80..82 run function explorers_eve:final/attack/multi/start
execute if score @s SkullAttack matches 83..87 run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 88..89 unless entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/line/start
execute if score @s SkullAttack matches 88..89 if entity @s[tag=ScattershotPossible] run function explorers_eve:final/attack/scatter/start

tag @s remove ScattershotPossible
tag @s remove RotateSuccess