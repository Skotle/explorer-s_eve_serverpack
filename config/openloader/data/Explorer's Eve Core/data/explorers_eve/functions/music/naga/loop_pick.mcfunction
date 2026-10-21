#Decide which loop to use, including intros.
execute if entity @s[tag=NagaIntro1] unless entity @e[type=twilightforest:naga,tag=Split,distance=..40] run function explorers_eve:music/naga/loop_1
execute unless entity @s[tag=NagaIntro1] unless entity @e[type=twilightforest:naga,tag=Split,distance=..40] run function explorers_eve:music/naga/intro_1
execute if entity @s[tag=NagaIntro2] if entity @e[type=twilightforest:naga,tag=Split,distance=..40] run function explorers_eve:music/naga/loop_2
execute unless entity @s[tag=NagaIntro2] if entity @e[type=twilightforest:naga,tag=Split,distance=..40] run function explorers_eve:music/naga/intro_2