#Decide which loop to use, including intros.
execute if entity @e[type=cataclysm:ender_guardian,tag=Phase1,distance=..64] run function explorers_eve:music/ender_guardian/loop_1
execute if entity @s[tag=EnderIntro2] if entity @e[type=cataclysm:ender_guardian,tag=Phase2,distance=..64] run function explorers_eve:music/ender_guardian/loop_2
execute unless entity @s[tag=EnderIntro2] if entity @e[type=cataclysm:ender_guardian,tag=Phase2,distance=..64] run function explorers_eve:music/ender_guardian/intro_2