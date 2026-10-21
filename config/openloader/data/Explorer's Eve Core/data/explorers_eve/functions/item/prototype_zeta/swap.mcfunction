#Switch between sword and blaster mode. The tag is needed to make sure both possibilities don't fire.
tag @s add ZetaSwap
execute if predicate explorers_eve:prototype_zeta_sword run function explorers_eve:item/prototype_zeta/swap_to_blaster
execute if entity @s[tag=ZetaSwap] if predicate explorers_eve:prototype_zeta_blaster run function explorers_eve:item/prototype_zeta/swap_to_sword

