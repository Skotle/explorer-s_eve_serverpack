#Add a charge.
scoreboard players add @s ZetaCharges 1
scoreboard players reset @s ZetaDamage
playsound minecraft:block.iron_trapdoor.open player @s ~ ~ ~ 1 1.5 1
execute if score @s ZetaCharges matches 5.. run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.75 1