#Give one panel at a time until they're all done.
give @s twilightforest:knightmetal_ingot
scoreboard players remove $Panels Math 1
execute if score $Panels Math matches 1.. run function explorers_eve:world/blue_skies/give_panel