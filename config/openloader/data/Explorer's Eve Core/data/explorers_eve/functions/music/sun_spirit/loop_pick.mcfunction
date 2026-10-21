#Decide which loop to use, including intros.
execute unless entity @e[type=aether:sun_spirit,distance=..25,scores={Health=..35}] run function explorers_eve:music/sun_spirit/loop_1
execute if entity @e[type=aether:sun_spirit,distance=..25,scores={Health=..35}] run function explorers_eve:music/sun_spirit/loop_2