#Remove time.
scoreboard players remove @s[tag=!FinalBossSegmentAttacking] StormAttackWait 1
execute if entity @s[scores={StormAttackWait=..-1}] run function explorers_eve:final/attack/segment/choose_attack