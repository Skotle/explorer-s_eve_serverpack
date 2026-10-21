#Make pretty particles and warnings!
scoreboard players remove @s WitherChargeDelay 1
execute positioned ~ ~1.5 ~ run particle minecraft:dust 0.5 0 0 1.5 ~ ~ ~ 0.5 1 0.5 1 10

execute if score @s WitherChargeDelay matches 40 run function explorers_eve:boss/wither/charge_warn
execute if score @s WitherChargeDelay matches 30 run function explorers_eve:boss/wither/charge_warn
execute if score @s WitherChargeDelay matches 20 run function explorers_eve:boss/wither/charge_warn
execute if score @s WitherChargeDelay matches 10 run function explorers_eve:boss/wither/charge_warn
execute if score @s WitherChargeDelay matches 0 run function explorers_eve:boss/wither/charge_end