#No marker? Spawn a new one.
execute unless entity @e[tag=WardenTarget,distance=..250] at @p[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["WardenTarget"]}

#Keep the marker after the player.
execute as @e[tag=WardenTarget,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:final/command_block/warden/beam_move
execute anchored eyes facing entity @e[tag=WardenTarget,limit=1,sort=nearest] eyes run function explorers_eve:final/command_block/warden/beam_aim

#Players get darkness here.
effect give @a[tag=FinalBattling] darkness 10 0 true

#Also, stay away from players!
execute if entity @a[gamemode=!spectator,distance=..12] run function explorers_eve:final/command_block/warden/beam_cancel
execute unless entity @a[gamemode=!spectator,distance=..80] run function explorers_eve:final/command_block/warden/beam_cancel

#Keep ticking the timer. After enough time, attack!
scoreboard players add @s WardenBarrageTime 3
execute if score @s WardenBarrageTime matches 150 run function explorers_eve:final/command_block/warden/beam_start

#Handles beaming.
execute if entity @s[tag=WardenBeam] run scoreboard players add @s WardenBeamTime 1
execute if score @s WardenBeamTime matches 35 run function explorers_eve:final/command_block/warden/beam_end