#Keep track of its health. Don't let it heal, ever.
execute store result score @s Health run data get entity @s Health
execute if score @s Health >= @s HealthLimit store result entity @s Health float 1 run scoreboard players get @s HealthLimit
execute store result score @s Health run data get entity @s Health
scoreboard players operation @s HealthLimit = @s Health