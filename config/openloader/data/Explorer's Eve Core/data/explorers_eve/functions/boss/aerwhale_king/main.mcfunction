#Main manager for Aerwhale King changes.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transitions.
execute if entity @s[tag=Phase1] if entity @s[scores={Health=..200}] run function explorers_eve:boss/aerwhale_king/phase_2

#Cloud puddles spawn whirlwinds.
execute as @e[type=area_effect_cloud,distance=..40,tag=!CloudChecked] run function explorers_eve:boss/aerwhale_king/cloud_whirlwind

#The boss spawns an evil whirlwind when it crashes.
execute store result score @s AerwhaleStunTime run data get entity @s StunTime
execute unless entity @s[tag=AerwhaleCrashed] if score @s AerwhaleStunTime matches 1.. run function explorers_eve:boss/aerwhale_king/crash_effects
execute if entity @s[tag=AerwhaleCrashed] if score @s AerwhaleStunTime matches 0 run tag @s remove AerwhaleCrashed

#In phase 2, fog is constant.
scoreboard players remove @s[tag=Phase2] AerwhaleFogTime 1
execute if score @s AerwhaleFogTime matches ..-1 run function explorers_eve:boss/aerwhale_king/fog_reset

#After a little while, a hint appears.
execute if score @s Health matches 300.. run function explorers_eve:boss/aerwhale_king/hint
execute if entity @s[tag=Phase2] run function explorers_eve:boss/aerwhale_king/hint_2

#No natural whirlwinds!
kill @e[type=aether:whirlwind,tag=!AerwhaleWhirlwind,distance=..40]

#If no one's around, deactivate.
execute if entity @s[nbt={BossFight:0b}] run function explorers_eve:boss/aerwhale_king/deactivate