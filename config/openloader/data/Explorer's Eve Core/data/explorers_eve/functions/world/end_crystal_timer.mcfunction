#Tick up a timer, and while it's active, stop the Storm from teleporting.
execute unless data storage world DragonUnspawned run scoreboard players add @s CrystalDelay 1
execute if score @s CrystalDelay matches 60.. run tag @s remove CrystalTimer