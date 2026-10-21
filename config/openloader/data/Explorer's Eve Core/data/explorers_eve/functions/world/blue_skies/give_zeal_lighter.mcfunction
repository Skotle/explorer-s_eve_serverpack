#Give one panel at a time until they're all done.
give @s blue_skies:zeal_lighter{display:{Lore:['{"text":"Creates fires. Can also activate permanent portals to the Everbright and Everdawn.","color":"gray","italic":false}','{"text":"It struggles to light fuses...","color":"gray","italic":false}','{"text":"Explorer\'s Treasure","color":"gold"}']},HideFlags:4,Unbreakable:1b,RepairCost:99,Enchantments:[{}]}
scoreboard players remove $Zeal Math 1
execute if score $Zeal Math matches 1.. run function explorers_eve:world/blue_skies/give_zeal_lighter