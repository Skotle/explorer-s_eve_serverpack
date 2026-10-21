#Wait for the sound to line up right. After a while, remove them.
scoreboard players add @s GlitchAttackTime 1
execute if score @s GlitchAttackTime matches ..70 run particle block twilightforest:brown_thorns ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2
execute if score @s GlitchAttackTime matches 70 run playsound blue_skies:entity.starlit_crusher.hammer_smash hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute if score @s GlitchAttackTime matches 70 run place feature twilightforest:thorns
execute if score @s GlitchAttackTime matches 70 run tag @s add ThornsPlaced
execute if score @s GlitchAttackTime matches 100.. if entity @e[tag=FinalBattle,distance=..4] run scoreboard players set @s GlitchAttackTime 670
execute if score @s GlitchAttackTime matches 670.. run function explorers_eve:final/glitch/attack/thorns/clear