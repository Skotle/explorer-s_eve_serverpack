#Traps fall apart after use.
scoreboard players add @s Math 1
execute if score @s Math matches 100.. unless entity @a[distance=..12] run scoreboard players add @s Math 999
kill @e[tag=GhastLightningMark,distance=..8]
execute if entity @s[tag=Golem] run kill @e[type=fireball,distance=..64]

execute if score @s Math matches 50 at @e[tag=GhastTrap,tag=!TrapUsed,distance=..64] run setblock ~ ~ ~ twilightforest:ghast_trap
execute if score @s Math matches 100.. run function explorers_eve:boss/ur_ghast/trap_break_particles
execute if score @s Math matches 250 run playsound witherstormmod:block_cluster_shake block @a ~ ~ ~ 5 1
execute if score @s Math matches 300 run playsound witherstormmod:block_cluster_shake block @a ~ ~ ~ 5 1
execute if score @s Math matches 350.. run function explorers_eve:boss/ur_ghast/trap_break