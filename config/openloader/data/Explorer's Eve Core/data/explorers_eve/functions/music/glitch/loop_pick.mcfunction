#Decide which loop to use, including intros.
execute if entity @s[tag=GlitchIntro] unless entity @e[tag=CommandBlockDying,distance=..500] run function explorers_eve:music/glitch/loop
execute unless entity @s[tag=GlitchIntro] unless entity @e[tag=CommandBlockDying,distance=..500] run function explorers_eve:music/glitch/intro
execute if predicate explorers_eve:overworld run function explorers_eve:music/glitch/loop_final