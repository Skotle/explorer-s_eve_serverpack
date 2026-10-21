#Move the marker somewhere near a player, but not too close!
execute at @a[tag=FinalBossMoveTarget,limit=1,sort=nearest] run spreadplayers ~ ~ 0 150 false @s
execute at @s if entity @a[gamemode=!spectator,distance=..48] run function explorers_eve:final/move/mark