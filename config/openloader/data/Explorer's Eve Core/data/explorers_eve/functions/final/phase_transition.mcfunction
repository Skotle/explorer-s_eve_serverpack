#Phase transition!
execute if entity @s[tag=Phase1,scores={FinalPhaseTransition=0}] run schedule function explorers_eve:final/phase_4_transition_sound 10t
execute if entity @s[tag=Phase3,scores={FinalPhaseTransition=0}] run schedule function explorers_eve:final/phase_4_transition_sound 10t
execute if entity @s[tag=Phase6,scores={FinalPhaseTransition=0}] run playsound witherstormmod:withered_beacon_power_up hostile @a[distance=..500] ~ ~ ~ 1 1 1
execute if entity @s[tag=Phase6,scores={FinalPhaseTransition=0}] run stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_6
execute if entity @s[tag=Phase6,scores={FinalPhaseTransition=0}] run playsound explorers_eve:final_theme_6_end record @a[tag=FinalMusic] ~ ~ ~ 100 1 1
execute if entity @s[tag=Phase6,scores={FinalPhaseTransition=0}] run scoreboard players set @a[tag=FinalMusic] MusicTime 300
scoreboard players add @s FinalPhaseTransition 1
execute if entity @s[scores={FinalPhaseTransition=3..}] run tag @s remove PhaseTransition