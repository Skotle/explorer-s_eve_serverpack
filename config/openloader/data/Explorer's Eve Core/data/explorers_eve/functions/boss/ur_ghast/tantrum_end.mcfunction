#End the tantrum, with cinematic trickery!
tag @s remove InTantrum
tp @e[type=twilightforest:carminite_ghastling,distance=..80] ~ -10000 ~
execute as @e[tag=GhastTrap,distance=..100] at @s if block ~ ~ ~ twilightforest:ghast_trap[active=true] unless entity @e[tag=TrapUsed,distance=..80] run tag @s add TrapUsed
execute at @e[tag=GhastTrap,tag=!TrapUsed] run setblock ~ ~ ~ air