#Tick down the cooldown.
scoreboard players remove @s StormEyeCooldown 1
execute if score @s StormEyeCooldown matches ..0 at @s run function explorers_eve:item/eye_of_the_storm/cooldown_end