#Fire, unless it shouldn't!
execute if entity @s[tag=ZetaCooldown] run playsound minecraft:entity.generic.extinguish_fire player @s ~ ~ ~ 1 2 1
execute if score @s ZetaCharges matches 0 run playsound minecraft:entity.generic.extinguish_fire player @s ~ ~ ~ 1 2 1
execute unless entity @s[tag=ZetaCooldown] if score @s ZetaCharges matches 1.. run function explorers_eve:item/prototype_zeta/shoot