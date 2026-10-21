#Decide which loop to use, including intros.
execute if entity @s[tag=ValkyrieQueenIntro1] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase1] run function explorers_eve:music/valkyrie_queen/loop_1
execute unless entity @s[tag=ValkyrieQueenIntro1] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase1] run function explorers_eve:music/valkyrie_queen/intro_1
execute if entity @s[tag=ValkyrieQueenIntro2] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase2] run function explorers_eve:music/valkyrie_queen/loop_2
execute unless entity @s[tag=ValkyrieQueenIntro2] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase2] run function explorers_eve:music/valkyrie_queen/intro_2
execute if entity @s[tag=ValkyrieQueenIntro3] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase3] run function explorers_eve:music/valkyrie_queen/loop_3
execute unless entity @s[tag=ValkyrieQueenIntro3] if entity @e[tag=ValkyrieQueenActive,distance=..40,tag=Phase3] run function explorers_eve:music/valkyrie_queen/intro_3