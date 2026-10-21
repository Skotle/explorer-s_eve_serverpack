#Main manager for Dragonsbane, a custom boss!
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Update the bossbar.
execute store result bossbar minecraft:dragonsbane value run scoreboard players get @s Health
bossbar set minecraft:dragonsbane players @a[distance=..48]

#Phase transitions.
execute if entity @s[tag=Phase1,tag=!DragonsbaneEscaping,tag=!DragonsbaneDigging,tag=!DragonsbaneLunging,scores={Health=..80}] unless entity @a[predicate=explorers_eve:pinched,distance=..4] if entity @a[gamemode=!spectator] run function explorers_eve:boss/dragonsbane/escape_start
execute if entity @s[tag=Phase1,tag=!DragonsbaneEscaping,scores={Health=..80}] run effect give @s resistance 5 5 true

#Phase 2 also triggers if players die or flee.
execute if entity @s[tag=Phase1,tag=!DragonsbaneEscaping] at @e[tag=DragonsbaneArena,limit=1,sort=nearest] positioned ~-11 ~-3 ~-11 unless entity @a[gamemode=!spectator,dx=22,dy=12,dz=22] if entity @a[gamemode=!spectator,distance=..200,nbt=!{Health:0f}] run function explorers_eve:boss/dragonsbane/escape_start

#Mining fatigue for all nearby players to reduce cheesing.
execute as @a[gamemode=!spectator,distance=..48] at @s run function explorers_eve:world/mining_fatigue

#No boat!
execute if predicate explorers_eve:boat run function explorers_eve:boss/dragonsbane/break_boat

#Burrow into the ground to escape.
execute if entity @s[tag=DragonsbaneEscaping] run function explorers_eve:boss/dragonsbane/escape_dig

#If a combo delay is active, reduce the timer.
execute if score @s DragonsbaneComboDelay matches 1.. run scoreboard players remove @s DragonsbaneComboDelay 1

#Pinching is different.
execute if entity @a[predicate=explorers_eve:pinched,distance=..4] run function explorers_eve:boss/dragonsbane/pinch_timer

#Spawn mobs over time.
scoreboard players remove @s DragonsbaneMobWait 1
execute if entity @s[scores={DragonsbaneMobWait=..-1}] run function explorers_eve:boss/dragonsbane/mob_start
execute as @e[tag=DragonsbaneMinion,distance=..64] at @s run function explorers_eve:boss/dragonsbane/mob_emerge

#Occasionally lunge.
scoreboard players remove @s DragonsbaneLungeWait 1
execute if entity @s[scores={DragonsbaneLungeWait=..-1}] run function explorers_eve:boss/dragonsbane/lunge_prepare
execute if entity @s[tag=DragonsbaneLunging] run function explorers_eve:boss/dragonsbane/lunge_delay

#Occasionally dig.
scoreboard players remove @s DragonsbaneDigWait 1
execute if entity @s[tag=Phase2,tag=!DragonsbaneLunging,tag=!DragonsbaneDigging] unless entity @a[gamemode=!spectator,distance=..24] if entity @a[gamemode=!spectator,distance=..64] run scoreboard players set @s DragonsbaneDigWait -100
execute if entity @s[scores={DragonsbaneDigWait=..-1}] run function explorers_eve:boss/dragonsbane/dig_start
execute if entity @s[tag=DragonsbaneEmerge] run function explorers_eve:boss/dragonsbane/dig_emerge
execute if entity @s[tag=DragonsbaneBurrow] run function explorers_eve:boss/dragonsbane/dig_burrow

#Keep the marker accurate!
tp @e[tag=DragonsbaneTracker,limit=1,sort=nearest] @s