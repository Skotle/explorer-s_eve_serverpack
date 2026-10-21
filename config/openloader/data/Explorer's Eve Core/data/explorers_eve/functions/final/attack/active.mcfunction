#Tick up the scoreboard and activate attacks at the right time.
scoreboard players add @s StormAttackTime 1

execute if entity @s[scores={StormAttackTime=8..},tag=MultishotActive] run function explorers_eve:final/attack/multi/pick
execute if entity @s[scores={StormAttackTime=4..},tag=LineshotActive] run function explorers_eve:final/attack/line/pick
execute if entity @s[scores={StormAttackTime=7..},tag=BarrageActive] run function explorers_eve:final/attack/barrage/pick
execute if entity @s[scores={StormAttackTime=4..},tag=ScattershotActive] run function explorers_eve:final/attack/scatter/pick
execute if entity @s[tag=QuakeActive] run function explorers_eve:final/attack/quake/timer
execute if entity @s[tag=LightningActive] run function explorers_eve:final/attack/lightning/timer
execute if entity @s[tag=SpawnTeleport] run function explorers_eve:final/move/spawn_timer

execute if entity @s[tag=!MultishotActive,tag=!LineshotActive,tag=!BarrageActive,tag=!ScattershotActive,tag=!QuakeActive,tag=!LightningActive,tag=!SpawnTeleport] run tag @s remove FinalBossAttacking