#Give one charm at a time until they're all done.
loot give @s loot explorers_eve:item/summoning_tome
scoreboard players remove $Tome Math 1
execute if score $Keeping Math matches 1.. run function explorers_eve:world/blue_skies/give_summoning_tome