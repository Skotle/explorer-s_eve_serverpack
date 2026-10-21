#Tick down the cooldown.
scoreboard players remove @s LichScepterCooldown 1
execute if score @s LichScepterCooldown matches ..0 at @s run function explorers_eve:item/lich_scepter/cooldown_end