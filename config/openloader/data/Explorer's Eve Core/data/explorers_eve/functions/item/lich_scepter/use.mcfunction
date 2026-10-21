#Activates whenever the Lich's Scepter is clicked.
execute if entity @s[tag=LichScepterActive] unless score @s LichBoltCooldown matches 1.. run function explorers_eve:item/lich_scepter/shoot
execute unless entity @s[tag=LichScepterActive] unless score @s LichScepterCooldown matches 1.. run function explorers_eve:item/lich_scepter/activate
execute unless entity @s[tag=LichScepterActive] if score @s LichScepterCooldown matches 1.. run function explorers_eve:item/lich_scepter/fail
scoreboard players reset @s Math