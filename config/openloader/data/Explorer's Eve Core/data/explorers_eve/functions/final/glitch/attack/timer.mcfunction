#This is very different from other attack functions. Add time, and when the time is higher than the boss's health, attack.
scoreboard players add @s GlitchAttackWait 2
execute unless entity @e[tag=FinalBattle,distance=..200] run scoreboard players add @s GlitchAttackWait 5
execute if score @s GlitchAttackWait matches 100 if score @s Health matches ..350 run function explorers_eve:final/glitch/teleport
execute if score @s GlitchAttackWait >= @s Health run function explorers_eve:final/glitch/attack/choose