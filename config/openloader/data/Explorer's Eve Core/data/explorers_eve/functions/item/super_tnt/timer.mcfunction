#The Storm stares at the TNT for a while, then it gets itself together. This exists to make sure that reloading the world doesn't break this feature.
scoreboard players add @s TNTDistractionTime 1
witherstormmod ultimateTarget distractions makeFocused @s
execute if score @s TNTDistractionTime matches 1000.. run function explorers_eve:item/super_tnt/end