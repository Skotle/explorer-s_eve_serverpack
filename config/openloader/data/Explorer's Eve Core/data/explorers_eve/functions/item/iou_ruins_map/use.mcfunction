#Activates whenever the IOU is clicked.
execute if dimension minecraft:overworld run function explorers_eve:item/iou_ruins_map/give_map
execute unless dimension minecraft:overworld run function explorers_eve:item/iou_ruins_map/fail