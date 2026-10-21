#Decide which loop to use, including intros.
execute if entity @s[tag=FinalIntro] if entity @w[tag=FinalBoss,tag=Phase1,distance=..500] run function explorers_eve:music/final/loop_1
execute unless entity @s[tag=FinalIntro] if entity @w[tag=FinalBoss,tag=Phase1,distance=..500] run function explorers_eve:music/final/intro_1
execute if entity @w[tag=FinalBoss,tag=Phase2,distance=..500] run function explorers_eve:music/final/loop_2
execute if entity @w[tag=FinalBoss,tag=Phase3,distance=..500] run function explorers_eve:music/final/loop_3
execute if entity @w[tag=FinalBoss,tag=Phase4,distance=..500] run function explorers_eve:music/final/loop_4
execute if entity @w[tag=FinalBoss,tag=Phase5,distance=..500] run function explorers_eve:music/final/loop_5
execute if entity @w[tag=FinalBoss,tag=Phase6,distance=..500] run function explorers_eve:music/final/loop_6
execute if entity @w[tag=FinalBoss,tag=Phase7,distance=..500] run function explorers_eve:music/final/loop_7
execute if entity @w[tag=FinalBoss,tag=Phase8,distance=..500] run function explorers_eve:music/final/loop_7