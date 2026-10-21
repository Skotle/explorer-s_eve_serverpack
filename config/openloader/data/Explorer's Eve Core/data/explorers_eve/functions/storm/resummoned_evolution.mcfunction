#Progress phases every 40 seconds.
scoreboard players add @s EvolutionTime 1
execute if entity @e[type=witherstormmod:formidibomb,distance=..500] run scoreboard players add @s EvolutionTime 2
execute if score @s EvolutionTime matches 1..40 run witherstormmod phase set @s 4
execute if score @s EvolutionTime matches 41..80 run witherstormmod phase set @s 4.5
execute if score @s EvolutionTime matches 81..120 run witherstormmod phase set @s 5
execute if score @s EvolutionTime matches 121..160 run witherstormmod phase set @s 5.25
execute if score @s EvolutionTime matches 161.. unless entity @s[tag=SymbiontReady] run function explorers_eve:storm/phase_5_progress
execute if entity @s[tag=SymbiontReady] if entity @e[type=witherstormmod:formidibomb,distance=..200] run tag @s add BombReady
execute if entity @s[tag=SymbiontReady] if entity @e[type=witherstormmod:formidibomb,distance=..200] run tag @s add BombLit