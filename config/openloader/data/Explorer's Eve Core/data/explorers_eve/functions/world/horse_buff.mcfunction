#Buff horses.
execute store result score @s Math run attribute @s minecraft:generic.movement_speed get 1000
execute if score @s Math matches ..300 run attribute @s minecraft:generic.movement_speed base set 0.3
execute store result score @s Math run attribute @s minecraft:horse.jump_strength get 100
execute if score @s Math matches ..85 run attribute @s minecraft:horse.jump_strength base set 0.85
attribute @s minecraft:generic.max_health modifier add 1d53804f-3438-43cb-b668-ad31de8430d7 MoreHealth 10 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
scoreboard players reset @s Math
tag @s add HorseBuffed