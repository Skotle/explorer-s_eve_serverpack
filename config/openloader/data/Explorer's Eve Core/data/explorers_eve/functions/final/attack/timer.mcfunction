#Remove time based on whether the Storm is active or passive.
execute if entity @s[tag=FinalBossActive] run scoreboard players remove @s StormAttackWait 100
execute if entity @s[tag=FinalBossPassive] run scoreboard players remove @s StormAttackWait 50
execute if entity @s[tag=FinalBossIdle] run scoreboard players remove @s StormAttackWait 50
execute if entity @s[tag=ChainEnhanced] run scoreboard players remove @s StormAttackWait 25
execute if entity @s[tag=DecoyPanic] run scoreboard players remove @s StormAttackWait 75
execute if entity @s[tag=Phase11] run scoreboard players remove @s StormAttackWait 1000
execute if entity @s[scores={StormAttackWait=..-1}] run function explorers_eve:final/attack/choose_type
tag @s remove AttackReady