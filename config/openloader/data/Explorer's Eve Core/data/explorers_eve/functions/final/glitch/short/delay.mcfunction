#Wait for a 'random' short to occur.
#scoreboard players remove @s GlitchShortDelay 5
execute unless entity @e[tag=FinalBattle,distance=..200] run scoreboard players remove @s GlitchShortDelay 13
execute if score @s GlitchShortDelay matches ..0 run function explorers_eve:final/glitch/short/start