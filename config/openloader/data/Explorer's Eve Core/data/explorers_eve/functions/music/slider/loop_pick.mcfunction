#Decide which loop to use, including intros.
execute if entity @s[tag=SliderIntro1] if entity @e[tag=SliderActive,distance=..40,tag=Phase1] run function explorers_eve:music/slider/loop_1
execute unless entity @s[tag=SliderIntro1] if entity @e[tag=SliderActive,distance=..40,tag=Phase1] run function explorers_eve:music/slider/intro_1
execute if entity @s[tag=SliderIntro2] if entity @e[tag=SliderActive,distance=..40,tag=!Phase1] run function explorers_eve:music/slider/loop_2
execute unless entity @s[tag=SliderIntro2] if entity @e[tag=SliderActive,distance=..40,tag=!Phase1] run function explorers_eve:music/slider/intro_2