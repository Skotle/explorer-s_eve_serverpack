#Decide which loop to use, including intros.
execute if entity @s[tag=DragonIntro1] unless entity @e[tag=DragonTracker,tag=CrystalsDestroyed] run function explorers_eve:music/dragon/loop_1
execute unless entity @s[tag=DragonIntro1] unless entity @e[tag=DragonTracker,tag=CrystalsDestroyed] run function explorers_eve:music/dragon/intro_1
execute if entity @s[tag=DragonIntro2] if entity @e[tag=DragonTracker,tag=CrystalsDestroyed,scores={Health=71..}] run function explorers_eve:music/dragon/loop_2
execute unless entity @s[tag=DragonIntro2] if entity @e[tag=DragonTracker,tag=CrystalsDestroyed,scores={Health=71..}] run function explorers_eve:music/dragon/intro_2
execute if entity @s[tag=DragonIntro3] if entity @e[tag=DragonTracker,tag=CrystalsDestroyed,scores={Health=..70}] run function explorers_eve:music/dragon/loop_3
execute unless entity @s[tag=DragonIntro3] if entity @e[tag=DragonTracker,tag=CrystalsDestroyed,scores={Health=..70}] run function explorers_eve:music/dragon/intro_3