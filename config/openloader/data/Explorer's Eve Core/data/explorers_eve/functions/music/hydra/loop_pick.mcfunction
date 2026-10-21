#Decide which loop to use, including intros.
execute if entity @s[tag=HydraIntro] if entity @e[type=twilightforest:hydra,tag=Phase1,distance=..40] run function explorers_eve:music/hydra/loop_1
execute unless entity @s[tag=HydraIntro] if entity @e[type=twilightforest:hydra,tag=Phase1,distance=..40] run function explorers_eve:music/hydra/intro_1
execute if entity @e[type=twilightforest:hydra,tag=Phase2,distance=..40] run function explorers_eve:music/hydra/loop_2
execute if entity @e[type=twilightforest:hydra,tag=Phase3,distance=..40] run function explorers_eve:music/hydra/loop_3