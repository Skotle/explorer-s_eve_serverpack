#Tick down the timer. Well, up. Whatever.
scoreboard players add @s InjuryDelay 1

#When it's done, heal it up.
execute if entity @s[scores={InjuryDelay=180..}] run function explorers_eve:storm/injury/end