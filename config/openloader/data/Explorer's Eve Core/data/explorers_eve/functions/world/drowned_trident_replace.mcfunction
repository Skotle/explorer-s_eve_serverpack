#Not all of them get one.
scoreboard players set @s RandomRange 8
function explorers_eve:random

execute if score @s RandomValue matches ..0 run item replace entity @s weapon.mainhand with minecraft:trident