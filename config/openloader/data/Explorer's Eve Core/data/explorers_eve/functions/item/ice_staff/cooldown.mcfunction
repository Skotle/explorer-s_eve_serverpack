#Tick down the cooldown.
scoreboard players remove @s IceStaffCooldown 1
execute if score @s IceStaffCooldown matches ..0 at @s run function explorers_eve:item/ice_staff/cooldown_end