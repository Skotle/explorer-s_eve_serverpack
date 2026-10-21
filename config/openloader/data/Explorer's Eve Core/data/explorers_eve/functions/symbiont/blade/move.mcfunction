#Every tick, move forward.
tp ^ ^ ^0.4
scoreboard players add @s Math 1
particle minecraft:explosion ~ ~ ~
execute if score @s Math matches 8.. run function explorers_eve:symbiont/blade/explode