#Decide which loop to use, including intros.
execute if entity @e[scores={CommandPhase=0},distance=..160] run function explorers_eve:music/command_block/loop_0
execute if entity @s[tag=CommandBlockIntro] if entity @e[scores={CommandPhase=1..5},tag=!Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_1
execute if entity @s[tag=CommandBlockIntro] if entity @e[scores={CommandPhase=6..11},tag=!Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_2
execute if entity @e[scores={CommandPhase=12..},tag=!Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_3
execute if entity @s[tag=CommandBlockIntro] if entity @e[scores={CommandPhase=1..5},tag=Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_1_alt
execute if entity @e[scores={CommandPhase=6..11},tag=Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_2_alt
execute if entity @e[scores={CommandPhase=12..},tag=Resummoned,distance=..160] run function explorers_eve:music/command_block/loop_3_alt
execute unless entity @s[tag=CommandBlockIntro] if entity @e[scores={CommandPhase=1..11},tag=!Resummoned,distance=..160] run function explorers_eve:music/command_block/intro
execute unless entity @s[tag=CommandBlockIntro] if entity @e[scores={CommandPhase=1..5},tag=Resummoned,distance=..160] run function explorers_eve:music/command_block/intro_alt