#Main manager for Ur-Ghast changes. First, initialize.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/ur_ghast/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#No healing above certain limits.
execute if entity @s[tag=Phase3Tantrum,scores={Health=361..}] run data modify entity @s Health set value 350
execute if entity @s[tag=Phase4Tantrum,scores={Health=126..}] run data modify entity @s Health set value 125
execute if entity @s[tag=Phase5,scores={Health=..34}] if entity @e[tag=TrapUsed] run data modify entity @s Health set value 35
execute if entity @s[tag=Phase4,scores={Health=..34}] if entity @e[tag=TrapUsed] run data modify entity @s Health set value 35

#Fireballs explode when deflected.
execute as @e[type=fireball,distance=..128] store result score @s UUID run data get entity @s Owner[0]
execute as @e[type=fireball,distance=..128] if score @s UUID = @r[distance=..128] UUID at @s run function explorers_eve:boss/ur_ghast/fireball_explode

#Phase transitions.
execute if entity @s[tag=Phase1] if entity @s[scores={Health=..595}] run function explorers_eve:boss/ur_ghast/phase_2
execute if entity @s[tag=Phase2] if entity @s[tag=!InTantrum,tag=!TantrumWait] run function explorers_eve:boss/ur_ghast/phase_3
execute if entity @s[tag=Phase3] if entity @s[scores={Health=..300},tag=!Phase3Tantrum] run function explorers_eve:boss/ur_ghast/tantrum_force
execute if entity @s[tag=Phase3Tantrum] if entity @s[tag=!InTantrum,tag=!TantrumWait] run function explorers_eve:boss/ur_ghast/phase_4
execute if entity @s[tag=Phase4] if entity @s[scores={Health=..110},tag=!Phase4Tantrum] run function explorers_eve:boss/ur_ghast/tantrum_force
execute if entity @s[tag=Phase4Tantrum] if entity @s[tag=!InTantrum,tag=!TantrumWait] run function explorers_eve:boss/ur_ghast/phase_5

#No losing Ghast Traps.
execute at @e[tag=GhastTrap] if block ~ ~ ~ air run setblock ~ ~ ~ twilightforest:ghast_trap

#No tantrums unless it's scripted!
execute if entity @s[tag=TantrumWait] if entity @s[nbt={inTantrum:1b}] run function explorers_eve:boss/ur_ghast/tantrum_start
execute if entity @s[tag=InTantrum] if entity @s[nbt={inTantrum:0b}] run function explorers_eve:boss/ur_ghast/tantrum_end
execute unless entity @s[tag=InTantrum] run data modify entity @s inTantrum set value 0b

#When a Ghast Trap is used, it starts to fall apart.
execute as @e[tag=TrapUsed,distance=..128] at @s run function explorers_eve:boss/ur_ghast/trap_break_timer

#Clusters fly for a bit before falling.
execute as @e[tag=TrapCluster] run scoreboard players add @s Math 1
execute as @e[tag=TrapCluster,scores={Math=30}] run data modify entity @s NoGravity set value 0b

#Attempt to spawn ghastguards periodically.
scoreboard players remove @s GhastMinionTime 1
execute if entity @s[tag=FinalBattle] run scoreboard players remove @s GhastMinionTime 2
execute if entity @e[tag=TrapUsed,distance=..128] run scoreboard players remove @s GhastMinionTime 100
execute if score @s GhastMinionTime matches ..-1 run function explorers_eve:boss/ur_ghast/minion_spawn

#Ghastguards die after a while.
scoreboard players add @e[tag=SupportGhastguard] Math 1
execute as @e[tag=SupportGhastguard,scores={Math=1200..}] run effect give @s wither 5 2 true

#Also, no natural spawn Ghastguards.
tp @e[type=twilightforest:carminite_ghastguard,tag=!SupportGhastguard,distance=..128] ~ -1000 ~

#No ghastlings remain unless the boss is tantruming or if there's only one trap left. This last bit's important because it stops lightning spam.
execute if entity @s[tag=!InTantrum,tag=!Phase5] run tp @e[type=twilightforest:carminite_ghastling,distance=..64] ~ -1000 ~

#Fireballs are less fiery. Track them, and when they explode, clear fire.
execute as @e[type=fireball,distance=..128,tag=!FireTracked] run function explorers_eve:boss/ur_ghast/fire_mark
execute as @e[tag=FireTracked,distance=..128] at @s run function explorers_eve:boss/ur_ghast/fire_track
execute as @e[tag=FireTracker] at @s unless entity @e[tag=FireTracked,distance=..1] run function explorers_eve:boss/ur_ghast/fire_extinguish

#In phase 3, lightning becomes an issue.
execute if entity @s[tag=Phase3] run scoreboard players remove @s GhastLightningTime 5
execute if entity @s[tag=Phase4] run scoreboard players remove @s GhastLightningTime 3
execute if entity @s[tag=FinalBattle] run scoreboard players remove @s GhastLightningTime 10
execute if entity @s[scores={GhastLightningTime=..-1}] run function explorers_eve:boss/ur_ghast/lightning_mark

#Lightning makes particles, and eventually, it strikes.
execute as @e[tag=GhastLightningMark] at @s run function explorers_eve:boss/ur_ghast/lightning_timer

#Hint if the player takes too long to stun it.
execute if entity @s[tag=Phase2] run function explorers_eve:boss/ur_ghast/hint