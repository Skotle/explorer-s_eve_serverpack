#Is it time to use this?
clear @s carrot_on_a_stick{KeepingCharm:1b} 1
data modify storage world TEMP set from entity @s Inventory
execute store success score @s Math run data modify storage world TEMP set value []
execute unless predicate explorers_eve:blue_skies unless dimension overworld run scoreboard players set @s Math 2
execute if entity @s[tag=KeepingCurseBroken] run scoreboard players set @s Math 3
execute if score @s Math matches 1.. run function explorers_eve:item/charm_of_keeping/fail
function explorers_eve:world/blue_skies/give_keeping_charm
execute if score @s Math matches 0 in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:item/charm_of_keeping/activate