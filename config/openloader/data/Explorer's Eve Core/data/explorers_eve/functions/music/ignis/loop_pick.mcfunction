#Decide which loop to use, including intros.
execute if entity @s[tag=IgnisIntro1] if entity @e[type=cataclysm:ignis,tag=Phase1,distance=..80] run function explorers_eve:music/ignis/loop_1
execute unless entity @s[tag=IgnisIntro1] if entity @e[type=cataclysm:ignis,tag=Phase1,distance=..80] run function explorers_eve:music/ignis/intro_1
execute if entity @s[tag=Ignis2Alt] if entity @e[type=cataclysm:ignis,tag=Phase2,distance=..80] run function explorers_eve:music/ignis/loop_2_alt
execute unless entity @s[tag=Ignis2Alt] if entity @e[type=cataclysm:ignis,tag=Phase2,distance=..80] run function explorers_eve:music/ignis/loop_2
execute if entity @s[tag=Ignis2Main] run tag @s remove Ignis2Alt
execute if entity @s[tag=IgnisIntro3] if entity @e[type=cataclysm:ignis,tag=Phase3,distance=..80] run function explorers_eve:music/ignis/loop_3
execute unless entity @s[tag=IgnisIntro3] if entity @e[type=cataclysm:ignis,tag=Phase3,distance=..80] run function explorers_eve:music/ignis/intro_3