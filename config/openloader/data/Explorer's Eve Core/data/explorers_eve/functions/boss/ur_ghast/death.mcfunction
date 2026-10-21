#End the fight by disposing of unneeded markers.
execute as @e[tag=GhastTrap] at @s run setblock ~ ~ ~ twilightforest:ghast_trap
kill @e[type=twilightforest:carminite_ghastling,distance=..64]
kill @e[tag=SupportGhastguard,distance=..128]
kill @e[tag=GhastTrap,distance=..32]
kill @s