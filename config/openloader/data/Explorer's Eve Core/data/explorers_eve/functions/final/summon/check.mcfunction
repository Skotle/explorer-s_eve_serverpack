#Mark the beacon.
playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 2 0.75

scoreboard players set @s Math 1
execute store result score @s RandomValue run data get block ~ ~ ~ y
execute if score @s RandomValue matches ..50 run scoreboard players set @s Math -1
execute unless predicate explorers_eve:overworld run scoreboard players set @s Math -2
execute if predicate explorers_eve:too_much_water run scoreboard players set @s Math -3

execute unless score @s Math matches 1.. run function explorers_eve:final/summon/cancel
execute if score @s Math matches 1.. run function explorers_eve:final/summon/start