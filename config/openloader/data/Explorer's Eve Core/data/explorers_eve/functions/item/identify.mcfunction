#Triggered whenever a player uses a carrot on a stick. Identify what item it is.
execute if predicate explorers_eve:vexation_totem run function explorers_eve:item/vexation_totem/use
execute if predicate explorers_eve:ice_staff run function explorers_eve:item/ice_staff/use
execute if predicate explorers_eve:charm_of_keeping run function explorers_eve:item/charm_of_keeping/use
execute if predicate explorers_eve:twilight_sundial run function explorers_eve:item/twilight_sundial/use
execute if predicate explorers_eve:iou_ruins_map run function explorers_eve:item/iou_ruins_map/use
execute if predicate explorers_eve:prototype_zeta_sneaking run function explorers_eve:item/prototype_zeta/swap
execute if predicate explorers_eve:prototype_zeta_blaster unless predicate explorers_eve:prototype_zeta_sneaking run function explorers_eve:item/prototype_zeta/use
execute if predicate explorers_eve:lich_scepter run function explorers_eve:item/lich_scepter/use

#Reset the scoreboard at the end.
scoreboard players reset @s CarrotStickUsed