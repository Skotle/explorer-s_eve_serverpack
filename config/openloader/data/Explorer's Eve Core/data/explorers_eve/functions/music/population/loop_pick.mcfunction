#Decide which loop to use, including intros.
execute if entity @s[tag=PopulationIntro1] if entity @e[type=#explorers_eve:population_boss,distance=..48,tag=Phase1] run function explorers_eve:music/population/loop_1
execute unless entity @s[tag=PopulationIntro1] if entity @e[type=#explorers_eve:population_boss,distance=..48,tag=Phase1] run function explorers_eve:music/population/intro_1
execute if entity @e[type=#explorers_eve:population_boss,distance=..48,tag=Phase2] run function explorers_eve:music/population/loop_2