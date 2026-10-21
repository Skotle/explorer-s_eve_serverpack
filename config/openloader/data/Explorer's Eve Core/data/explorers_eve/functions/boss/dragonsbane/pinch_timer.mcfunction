#Pinching lasts a little bit.
scoreboard players add @s DragonsbanePinchTime 1
execute if score @s DragonsbanePinchTime matches 1 run function explorers_eve:boss/dragonsbane/pinch_start
execute if score @s DragonsbanePinchTime matches 50.. run function explorers_eve:boss/dragonsbane/pinch_end