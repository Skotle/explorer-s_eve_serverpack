#Give one panel at a time until they're all done.
give @s witherstormmod:amulet{TrackEntityTypes:true}
scoreboard players remove $Amulet Math 1
execute if score $Amulet Math matches 1.. run function explorers_eve:world/blue_skies/give_amulet