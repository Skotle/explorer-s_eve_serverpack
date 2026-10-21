#Move the marker somewhere near a player, but not too close!
execute at @p[gamemode=!spectator,distance=..200] run spreadplayers ~ ~ 0 20 false @s
execute at @s if entity @a[gamemode=!spectator,distance=..12] run function explorers_eve:final/command_block/warden/teleport_near