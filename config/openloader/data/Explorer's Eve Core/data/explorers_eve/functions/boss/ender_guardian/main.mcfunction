#Main manager for Netherite Monstrosity changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/ender_guardian/activate

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transitions.
execute if entity @s[tag=Phase1,scores={Health=..225}] run function explorers_eve:boss/ender_guardian/phase_2
execute if entity @s[scores={Health=..150},tag=!CrystalUpgraded] run function explorers_eve:boss/ender_guardian/void_crystal_upgrade

#Whenever a void crystal warning spawns, keep it moving.
execute as @e[tag=VoidWarn] at @s run function explorers_eve:boss/ender_guardian/void_warn

#Whenever a void crystal mark spawns, keep it moving.
execute as @e[tag=VoidSpike] at @s run function explorers_eve:boss/ender_guardian/void_spike

#In phase 1, it can't go down to the second layer.
execute if entity @s[tag=Phase1] if entity @s[y=30,dy=5] at @e[tag=VoidSpikeSource,limit=1,sort=nearest] run tp @s ~ ~6 ~

#In the phase 2 transition, break more of the floor.
execute if entity @s[tag=FloorBreakWait] if entity @s[y=30,dy=6] at @e[tag=VoidSpikeSource,limit=1,sort=nearest] run function explorers_eve:boss/ender_guardian/break_floor

#In phase 2, no teleporting out of the arena. Just in case.
execute if entity @s[tag=Phase2] if entity @s[y=45,dy=30] at @e[tag=VoidSpikeSource,limit=1,sort=nearest] run tp @s ~ ~6 ~

#In phase 2, add extra spikes.
execute if entity @s[tag=!Phase1] run scoreboard players remove @s EnderGuardianTime 1
execute if entity @s[scores={EnderGuardianTime=..-1},tag=!FinalBattle] run function explorers_eve:boss/ender_guardian/void_crystal_start

#Tick down the crystal timers to know when to fire.
scoreboard players remove @e[tag=VoidSpikeSource,distance=..64] EnderGuardianTime 1
execute as @e[tag=VoidSpikeSource,distance=..64,scores={EnderGuardianTime=1}] at @s run function explorers_eve:boss/ender_guardian/void_crystal_shoot

#No stunning!
effect clear @a[distance=..10,tag=!GlitchGrabbed] cataclysm:stun

#In the rematch, spam Void Vortexes. DEBUG, disabled for now because this was too strong, but I don't want to delete it entirely because it's cool.
#execute if entity @s[scores={EnderGuardianTime=..-1},tag=FinalBattle] run function explorers_eve:boss/ender_guardian/void_vortex