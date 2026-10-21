#Tick up the scoreboard and activate attacks at the right time.
scoreboard players add @s StormAttackTime 1

execute if entity @s[scores={StormAttackTime=6..},tag=LineshotActive] run function explorers_eve:final/attack/segment/line/pick
execute if entity @s[scores={StormAttackTime=9..},tag=BarrageActive] run function explorers_eve:final/attack/segment/barrage/pick
execute if entity @s[scores={StormAttackTime=5..},tag=ScattershotActive] run function explorers_eve:final/attack/segment/scatter/pick

execute if entity @s[tag=!LineshotActive,tag=!BarrageActive,tag=!ScattershotActive] run tag @s remove FinalBossSegmentAttacking