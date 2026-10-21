#Officially start a tantrum phase. Done this way to make sure that Twilight Forest calls for ghastlings happen.
tag @s remove TantrumWait
tag @s add InTantrum
execute if entity @s[tag=Phase2] run tag @e[tag=GhastTrap,limit=2,sort=random,distance=..100] add Knight
execute if entity @s[tag=Phase3] run tag @e[tag=GhastTrap,distance=..100] remove Knight
execute if entity @s[tag=Phase3] run tag @e[tag=GhastTrap,distance=..100] add BlockChain
execute if entity @s[tag=Phase4] run tag @e[tag=GhastTrap,distance=..100] add Golem
execute as @e[tag=GhastTrap] at @s run function explorers_eve:boss/ur_ghast/trap_guards