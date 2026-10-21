#Track if it's time to fire lamp effects.
execute if score @s LampTime = @s LampTimeOld if predicate explorers_eve:lamp_of_cinders if score @s LampTime matches 14.. at @s run function explorers_eve:item/lamp_of_cinders/release
execute if score @s LampTime = @s LampTimeOld run function explorers_eve:item/lamp_of_cinders/reset

#Update the old time to match the new.
scoreboard players operation @s[tag=UsingLamp] LampTimeOld = @s LampTime