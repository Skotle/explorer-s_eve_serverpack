#Run checks, and based on that, either spawn or fail.
scoreboard players set @s Math 0
execute if entity @e[type=cataclysm:nameless_sorcerer,distance=1..] run scoreboard players set @s Math 1
execute if predicate explorers_eve:invalid_teleport run scoreboard players set @s Math 2
execute positioned over motion_blocking unless entity @s[distance=..2] run scoreboard players set @s Math 3
execute if predicate explorers_eve:too_much_water run scoreboard players set @s Math 4
execute if score @s Math matches 0 run function explorers_eve:boss/sorcerer/activate
execute unless score @s Math matches 0 run function explorers_eve:boss/sorcerer/activate_fail
scoreboard players reset @s Math