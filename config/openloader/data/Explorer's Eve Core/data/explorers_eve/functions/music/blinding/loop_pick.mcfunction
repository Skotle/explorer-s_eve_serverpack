#Decide which loop to use, including intros.
execute if entity @s[tag=BlindingIntro1] if entity @e[type=#explorers_eve:blinding_boss,distance=..24,tag=Phase1] run function explorers_eve:music/blinding/loop_1
execute unless entity @s[tag=BlindingIntro1] if entity @e[type=#explorers_eve:blinding_boss,distance=..24,tag=Phase1] run function explorers_eve:music/blinding/intro_1
execute if entity @s[tag=BlindingIntro2] if entity @e[type=#explorers_eve:blinding_boss,distance=..24,tag=Phase2] run function explorers_eve:music/blinding/loop_2
execute unless entity @s[tag=BlindingIntro2] if entity @e[type=#explorers_eve:blinding_boss,distance=..24,tag=Phase2] run function explorers_eve:music/blinding/intro_2