#Decide which loop to use, including intros.
execute if entity @s[tag=NetheriteMonstrosityIntro1] if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase1,distance=..40] run function explorers_eve:music/netherite_monstrosity/loop_1
execute unless entity @s[tag=NetheriteMonstrosityIntro1] if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase1,distance=..40] run function explorers_eve:music/netherite_monstrosity/intro_1
execute if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase2,distance=..40] run function explorers_eve:music/netherite_monstrosity/loop_2
execute if entity @s[tag=NetheriteMonstrosityIntro3] if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase3,distance=..40] run function explorers_eve:music/netherite_monstrosity/loop_3
execute unless entity @s[tag=NetheriteMonstrosityIntro3] if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase3,distance=..40] run function explorers_eve:music/netherite_monstrosity/intro_3
execute if entity @e[type=cataclysm:netherite_monstrosity,tag=Phase4,distance=..40] run function explorers_eve:music/netherite_monstrosity/loop_3