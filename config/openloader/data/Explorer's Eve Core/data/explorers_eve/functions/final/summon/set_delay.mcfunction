#Wait half a second so the game has time to process the bomb exploding.
scoreboard players add @s Math 1
execute if score @s Math matches 10.. run function explorers_eve:final/summon/set_search