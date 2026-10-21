#Main manager for Warden effects.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Update the bossbar.
execute store result bossbar minecraft:command_warden value run scoreboard players get @s Health
bossbar set minecraft:command_warden players @a[distance=..200]

#At certain points, force ranged attacks. mimic sunspirit laser, add 2 to scoreboard and 3 for second batch
execute if entity @s[tag=!Barrage1,scores={Health=..350}] run function explorers_eve:final/command_block/warden/barrage_start
execute if entity @s[tag=!Barrage2,scores={Health=..100}] run function explorers_eve:final/command_block/warden/barrage_start

#While barraging, run these functions.
execute if entity @s[tag=WardenBarrage] run function explorers_eve:final/command_block/warden/barrage

#While emerging, the Warden can't move.
execute if entity @s[tag=WardenEmerging] run function explorers_eve:final/command_block/warden/emerge_timer

#Players with Darkness get night vision.
effect give @a[tag=FinalBattling,predicate=explorers_eve:darkness] minecraft:night_vision 11 0 true
effect clear @a[tag=FinalBattling,predicate=!explorers_eve:darkness] minecraft:night_vision

#No potions!
effect clear @s

#It teleports occasionally.
scoreboard players remove @s WardenTeleportTime 1
execute if score @s WardenTeleportTime matches ..-1 run function explorers_eve:final/command_block/warden/teleport