#Give one charm at a time until they're all done.
loot give @s loot explorers_eve:item/alchemy_scroll
scoreboard players remove $Scroll Math 1
execute if score $Scroll Math matches 1.. run function explorers_eve:world/blue_skies/give_alchemy_scroll