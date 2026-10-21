#Give one charm at a time until they're all done.
loot give @s loot explorers_eve:item/charm_of_keeping
scoreboard players remove $Keeping Math 1
execute if score $Keeping Math matches 1.. run function explorers_eve:world/blue_skies/give_keeping_charm