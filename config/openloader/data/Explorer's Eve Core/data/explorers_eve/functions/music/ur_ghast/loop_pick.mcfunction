#Decide which loop to use, including intros.
execute if entity @s[tag=UrGhastIntro1] if entity @e[type=twilightforest:ur_ghast,tag=Phase1,distance=..128] run function explorers_eve:music/ur_ghast/loop_1
execute unless entity @s[tag=UrGhastIntro1] if entity @e[type=twilightforest:ur_ghast,tag=Phase1,distance=..128] run function explorers_eve:music/ur_ghast/intro_1
execute if entity @e[type=twilightforest:ur_ghast,tag=Phase2,distance=..128] run function explorers_eve:music/ur_ghast/loop_2
execute if entity @s[tag=UrGhastIntro3] if entity @e[type=twilightforest:ur_ghast,tag=Phase3,distance=..128] run function explorers_eve:music/ur_ghast/loop_3
execute unless entity @s[tag=UrGhastIntro3] if entity @e[type=twilightforest:ur_ghast,tag=Phase3,distance=..128] run function explorers_eve:music/ur_ghast/intro_3
execute if entity @e[type=twilightforest:ur_ghast,tag=Phase4,distance=..128] run function explorers_eve:music/ur_ghast/loop_4
execute if entity @e[type=twilightforest:ur_ghast,tag=Phase5,distance=..128] run function explorers_eve:music/ur_ghast/loop_5