#Spawn a marker, and repeat until the scoreboard runs out.
summon marker ~ ~ ~ {Tags:["TentacleMark"]}
scoreboard players remove @s Math 1
execute if entity @s[scores={Math=1..}] run function explorers_eve:symbiont/tentacles_mark
