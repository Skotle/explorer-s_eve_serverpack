#Over time, wear armor!
scoreboard players add @s SymbiontArmorTime 1
scoreboard players set @w[tag=Resummoned] StormAttackWait 2000

execute if score @s SymbiontArmorTime matches 203 run function explorers_eve:symbiont/armor/boots
execute if score @s SymbiontArmorTime matches 263 run function explorers_eve:symbiont/armor/leggings
execute if score @s SymbiontArmorTime matches 323 run function explorers_eve:symbiont/armor/chestplate
execute if score @s SymbiontArmorTime matches 383 run function explorers_eve:symbiont/armor/helmet
execute if score @s SymbiontArmorTime matches 443 run function explorers_eve:symbiont/armor/weapon