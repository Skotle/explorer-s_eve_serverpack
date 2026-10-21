#Tick down the delay, and make a warning circle at 60 ticks remaining.
scoreboard players remove @s ValkyrieColumnDelay 1
execute if score @s ValkyrieColumnDelay matches 60 run function explorers_eve:boss/valkyrie_queen/column_circle
execute if score @s ValkyrieColumnDelay matches ..0 run tag @s remove LightningColumnDelayed

#Big particles!
particle minecraft:electric_spark ~ ~ ~ 1.5 0.25 1.5 0.2 1