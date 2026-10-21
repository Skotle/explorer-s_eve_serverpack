#Set the skull shooting time. Various factors affect it.
scoreboard players set @s SymbiontSkullWait 40
execute if entity @s[tag=RushMode] run scoreboard players remove @s SymbiontSkullWait 10
execute if entity @s[tag=SymbiontRematch] run scoreboard players remove @s SymbiontSkullWait 10

#Also, shoot.
execute as @w[tag=SymbiontHelp] at @s run function explorers_eve:symbiont/summon_skull