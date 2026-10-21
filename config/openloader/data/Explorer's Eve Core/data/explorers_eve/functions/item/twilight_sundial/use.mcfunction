#Activates whenever the sundial is clicked.
execute if dimension minecraft:overworld run function explorers_eve:item/twilight_sundial/advance_time
execute unless dimension minecraft:overworld run function explorers_eve:item/twilight_sundial/fail