#Activates whenever the Ice Staff is clicked.
execute if score @s IceStaffCooldown matches 1.. run function explorers_eve:item/ice_staff/fail
execute unless score @s IceStaffCooldown matches 1.. run function explorers_eve:item/ice_staff/launch
scoreboard players reset @s Math