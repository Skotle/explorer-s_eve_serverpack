#Update tags.
tag @s add Phase4Evolving
tag @s remove Phase4EscapeTrack

#Determine how long it'll take to reach phase 5 based on how much time the player spent in the Twilight Forest.
scoreboard players operation @s Math = @s EvolutionTime
execute if score @s Math matches ..600 run scoreboard players set @s EvolutionTime 900
execute if score @s Math matches 601..1200 run scoreboard players set @s EvolutionTime 600
execute if score @s Math matches 1201..1800 run scoreboard players set @s EvolutionTime 300
execute if score @s Math matches 1801.. run scoreboard players set @s EvolutionTime 150