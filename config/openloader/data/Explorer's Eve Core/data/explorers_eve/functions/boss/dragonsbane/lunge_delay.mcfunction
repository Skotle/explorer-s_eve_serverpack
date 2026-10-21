#Face the player before lunging.
scoreboard players remove @s DragonsbaneLungeTime 1
particle minecraft:angry_villager ~ ~0.5 ~ 0.5 0.3 0.5 1 1 normal
execute if score @s DragonsbaneLungeTime matches ..-1 run function explorers_eve:boss/dragonsbane/lunge_player