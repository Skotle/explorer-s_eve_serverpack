#Override for health to prevent it from overhealing.
execute store result score @s Health run data get entity @s Health
execute if score @s Health matches 261.. run data modify entity @s Health set value 260