#Convert damage into Zeta damage that won't get reset. If appropriate, add a charge.
execute if predicate explorers_eve:empowered run function explorers_eve:item/prototype_zeta/multiply_damage
execute unless score @s ZetaCharges matches 5.. run scoreboard players operation @s ZetaDamage += @s Damage
scoreboard players reset @s Damage
execute if score @s ZetaDamage matches 400.. at @s run function explorers_eve:item/prototype_zeta/add_charge