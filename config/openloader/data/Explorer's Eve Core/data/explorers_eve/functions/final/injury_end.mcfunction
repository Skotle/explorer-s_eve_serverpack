#Oop, it's recovered now!
data modify entity @s Invulnerable set value 1b
data modify entity @s PlayDeadManager.RevivalTime set value 3400
data modify entity @s UltimateTargetDistraction.DistractionWait set value 200
execute as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data modify entity @s UltimateTargetDistraction.DistractionWait set value 200

data merge entity @s {Heads:{0:{InjuryTime:1},1:{InjuryTime:1},2:{InjuryTime:1}}}
execute as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data merge entity @s {Heads:{0:{InjuryTime:1},1:{InjuryTime:1},2:{InjuryTime:1}}}
witherstormmod config server set server.misc.flyingHeight 10
witherstormmod config server set server.ultimate_target_logic.ultimateTargetingType NEAREST
title @a[tag=FinalBattling] actionbar {"text":" "}
tag @s remove FinalBossInjured
tag @s remove FinalBossVulnerable
tag @s add AttackPossible

execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint4 run function explorers_eve:final/phase_8
execute if entity @s[tag=Phase7] run function explorers_eve:final/phase_8
execute if entity @s[tag=Phase6] run function explorers_eve:final/phase_7
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint3 run function explorers_eve:final/phase_6
execute if entity @s[tag=Phase5] run function explorers_eve:final/phase_6
execute if entity @s[tag=Phase4] run function explorers_eve:final/phase_5
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint2 run function explorers_eve:final/phase_4
execute if entity @s[tag=Phase3] run function explorers_eve:final/phase_4
execute if entity @s[tag=Phase2] run function explorers_eve:final/phase_3
execute if entity @s[tag=Phase1] run function explorers_eve:final/phase_2