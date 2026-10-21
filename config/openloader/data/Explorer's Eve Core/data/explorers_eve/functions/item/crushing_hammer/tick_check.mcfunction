#Track if it's time to fire lamp effects.
execute if score @s HammerTime = @s HammerTimeOld if predicate explorers_eve:crushing_hammer if score @s HammerTime matches 21.. if entity @s[nbt={OnGround:1b}] at @s run function explorers_eve:item/crushing_hammer/release
execute if score @s HammerTime = @s HammerTimeOld run function explorers_eve:item/crushing_hammer/reset

#Update the old time to match the new.
scoreboard players operation @s[tag=UsingHammer] HammerTimeOld = @s HammerTime