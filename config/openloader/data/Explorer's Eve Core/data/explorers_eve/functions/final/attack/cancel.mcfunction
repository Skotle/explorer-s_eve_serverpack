#No target? No attack.
scoreboard players set @s SkullAttack -99
kill @e[tag=FinalBossDestination]
witherstormmod ultimateTarget clear @s pos
tag @s remove FinalBossAttacking
tag @s remove FinalBossMoving
execute if entity @s[tag=BarrageActive] run function explorers_eve:final/attack/barrage/end
execute if entity @s[tag=LightningActive] run function explorers_eve:final/attack/lightning/end
execute if entity @s[tag=LineshotActive] run function explorers_eve:final/attack/line/end
execute if entity @s[tag=MultishotActive] run function explorers_eve:final/attack/multi/end
execute if entity @s[tag=QuakeActive] run function explorers_eve:final/attack/quake/end
tag @s remove SpawnTeleport
tag @s remove ScattershotActive
tag @s remove SlowAttack