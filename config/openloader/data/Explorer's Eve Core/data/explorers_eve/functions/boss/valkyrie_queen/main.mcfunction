#Main manager for Valkyrie Queen changes.
#Thunder Crystals are janky and unwanted.
kill @e[type=aether:thunder_crystal,distance=..60]

#In the rematch, keep the marker nearby so it doesn't despawn.
execute if entity @s[tag=FinalBattle] run tp @e[tag=ValkyrieQueenTracker,distance=..128,limit=1,sort=nearest] @s

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transitions.
execute if entity @s[tag=Phase1] if entity @s[scores={Health=..440}] run function explorers_eve:boss/valkyrie_queen/phase_2
execute if entity @s[tag=Phase2] if entity @s[scores={Health=..200}] run function explorers_eve:boss/valkyrie_queen/phase_3

#Teleporting.
execute unless entity @e[tag=ValkyrieTeleportMark,distance=..5] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["ValkyrieTeleportMark"]}
scoreboard players remove @s[tag=Phase1] ValkyrieTeleportTime 8
scoreboard players remove @s[tag=Phase2] ValkyrieTeleportTime 3
scoreboard players remove @s[tag=Phase3,tag=!FinalBattle] ValkyrieTeleportTime 4
execute if score @s ValkyrieTeleportTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/teleport_start

#Lightning bolt attack.
scoreboard players remove @s[tag=Phase2] ValkyrieBoltTime 2
scoreboard players remove @s[tag=Phase3] ValkyrieBoltTime 2
execute if score @s ValkyrieBoltTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/bolt_start

#Lightning bolt strikes.
execute as @e[tag=ValkyrieBoltMark,distance=..60] at @s run function explorers_eve:boss/valkyrie_queen/bolt_timer

#Occasionally lunge.
scoreboard players remove @s[tag=Phase2] ValkyrieLungeTime 2
scoreboard players remove @s[tag=Phase3] ValkyrieLungeTime 3
execute if score @s ValkyrieLungeTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/lunge
execute if entity @s[tag=ValkyrieLunging] run function explorers_eve:boss/valkyrie_queen/lunge_trail

#Occasionally create an electric column of pain.
scoreboard players remove @s[tag=Phase2] ValkyrieColumnTime 2
scoreboard players remove @s[tag=Phase3] ValkyrieColumnTime 3
execute if score @s ValkyrieColumnTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/column_start

#Lightning column management.
execute as @e[tag=LightningColumnDelayed,distance=..128] at @s run function explorers_eve:boss/valkyrie_queen/column_delay
execute as @e[tag=LightningColumn,tag=!LightningColumnDelayed,distance=..128] at @s run function explorers_eve:boss/valkyrie_queen/column_active
scoreboard players remove @a[scores={ValkyrieColumnDelay=1..}] ValkyrieColumnDelay 1
execute as @a[distance=..128] at @s at @e[tag=LightningColumn,limit=1,sort=nearest,distance=..8] run playsound twilightforest:block.twilightforest.ghast_trap.warmup player @s ~ ~ ~ 0.2 2 0.1

#Levitation effects in the last phase.
scoreboard players remove @s[tag=Phase3,tag=!FinalBattle] ValkyrieGravityTime 1
execute if score @s ValkyrieGravityTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/gravity_change

#No fall damage!
execute if entity @s[tag=Phase3,tag=!FinalBattle] as @a[distance=..40] at @s if block ~ ~-1 ~ minecraft:air run effect give @s jump_boost 1 255 true

#If no one's around, deactivate.
execute if entity @s[nbt={BossFight:0b}] run function explorers_eve:boss/valkyrie_queen/deactivate