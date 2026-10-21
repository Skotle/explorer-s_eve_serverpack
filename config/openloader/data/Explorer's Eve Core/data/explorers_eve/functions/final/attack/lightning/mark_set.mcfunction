#Decide how long the marker will take to erupt.
scoreboard players set @s RandomRange 3
function explorers_eve:random
scoreboard players operation @s StormAttackTime = @s RandomValue
scoreboard players add @s StormAttackTime 3
scoreboard players set @s Math 10
scoreboard players operation @s StormAttackTime *= @s Math
scoreboard players add @s StormAttackTime 15

#No striking underground.
execute unless block ~ ~ ~ air positioned ~ ~1 ~ run function explorers_eve:final/attack/lightning/mark_up