#It comes...Focus it and make noise. For some reason, changing data AFTER teleporting doesn't work. I don't know why.
witherstormmod ultimateTarget distractions makeFocused @s
kill @e[type=witherstormmod:block_cluster,distance=..500]

#Cut stationary ticks a little bit to mimic the player having a head start.
execute if entity @s[tag=DistanceTeleport] store result entity @s TargetStationaryTicks int 0.85 run data get entity @s TargetStationaryTicks
tag @s remove DistanceTeleport

execute at @e[tag=StormTeleportActive,limit=1] if predicate explorers_eve:end run tag @s add EndTeleport

#Generate a new teleport delay.
scoreboard players set @s RandomRange 1200
function explorers_eve:random
scoreboard players operation @s StormTeleportDelay = @s RandomValue
scoreboard players add @s StormTeleportDelay 2400

#Remove the FirstTeleport tag. This is used for the one-time effects.
tag @s remove FirstTeleport

#If this is the Wither Storm's first teleport outside of the Twilight Forest, become very mad.
execute if entity @s[tag=Phase5Chase] at @e[tag=StormTeleportActive,limit=1] unless dimension twilightforest:twilight_forest run function explorers_eve:storm/phase_5_chase

#Reset head health, just in case.
execute as @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest,distance=..200] run data merge entity @s {Heads:{0:{Hits:0},1:{Hits:0},2:{Hits:0}}}

#Also, it always attempts to use a scattershot after teleporting.
tag @s add ForceScatter
scoreboard players set @s StormAttackWait 400

execute at @e[tag=StormTeleportActive,limit=1] positioned over world_surface run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ ~250 ~
execute at @e[tag=StormTeleportActive,limit=1] positioned over world_surface run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ ~250 ~ facing entity @p[gamemode=!spectator]

scoreboard players reset @s StormTeleportTime
scoreboard players reset @s StormTeleportSound
function explorers_eve:storm/teleport/set_cap
execute at @e[tag=StormTeleportActive,limit=1] run effect give @a[distance=1..] minecraft:darkness 5 0 true
execute at @e[tag=StormTeleportActive,limit=1] run playsound witherstormmod:wither_storm_evolves hostile @a[distance=1..] ~ ~ ~ 5 1 1
execute at @e[tag=StormTeleportActive,limit=1] run playsound witherstormmod:formidibomb_explosion_quiet hostile @a[distance=1..] ~ ~ ~ 0.5 1 1
execute at @e[tag=StormTeleportActive,limit=1] run witherstormmod screenShake @a[distance=1..] 80t 5
tag @e[tag=StormTeleportActive] remove StormTeleportActive