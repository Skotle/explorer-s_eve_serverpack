#Decide which loop to use, including intros.
execute if entity @s[tag=AerwhaleIntro1] if entity @e[tag=AerwhaleKingActive,distance=..40,tag=Phase1] run function explorers_eve:music/aerwhale_king/loop_1
execute unless entity @s[tag=AerwhaleIntro1] if entity @e[tag=AerwhaleKingActive,distance=..40,tag=Phase1] run function explorers_eve:music/aerwhale_king/intro_1
execute if entity @s[tag=AerwhaleIntro2] if entity @e[tag=AerwhaleKingActive,distance=..40,tag=!Phase1] run function explorers_eve:music/aerwhale_king/loop_2
execute unless entity @s[tag=AerwhaleIntro2] if entity @e[tag=AerwhaleKingActive,distance=..40,tag=!Phase1] run function explorers_eve:music/aerwhale_king/intro_2