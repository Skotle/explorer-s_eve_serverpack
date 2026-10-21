#Reset skull attack timer.
scoreboard players set @s RandomRange 200
function explorers_eve:random
scoreboard players operation @s StormAttackWait = @s RandomValue
scoreboard players add @s StormAttackWait 300

scoreboard players set @s StormAttackTime 0

#Then choose whether to attack or move.
execute unless entity @s[tag=FocusChase] run scoreboard players remove @s FinalAttackCount 1
execute if score @s FinalAttackCount matches 0.. run function explorers_eve:final/attack/choose_attack
execute if score @s FinalAttackCount matches ..-1 unless entity @s[tag=FinalBossIdle] run function explorers_eve:final/move/start
execute if score @s FinalAttackCount matches ..-1 if entity @s[tag=FinalBossIdle] run function explorers_eve:final/move/teleport