#Tick down the cooldown.
scoreboard players remove @s ZetaCooldown 1
execute if score @s ZetaCooldown matches ..0 at @s run function explorers_eve:item/prototype_zeta/cooldown_end