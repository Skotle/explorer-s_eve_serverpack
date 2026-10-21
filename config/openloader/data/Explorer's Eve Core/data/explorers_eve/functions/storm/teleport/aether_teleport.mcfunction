#Because the Aether is above the Overworld, just move, no theatrics.
witherstormmod ultimateTarget distractions makeFocused @s
data remove entity @s TrackedEntities
kill @e[type=witherstormmod:block_cluster,distance=..500]

tag @e[tag=StormTeleportActive] remove StormTeleportActive
execute if predicate explorers_eve:aether in minecraft:overworld run forceload add ~ ~ ~ ~
execute if predicate explorers_eve:overworld in aether:the_aether run forceload add ~ ~ ~ ~
execute if predicate explorers_eve:aether in minecraft:overworld run summon marker ~ 200 ~ {Tags:["StormTeleportTarget","StormTeleportActive"]}
execute if predicate explorers_eve:overworld in aether:the_aether run summon marker ~ 200 ~ {Tags:["StormTeleportTarget","StormTeleportActive"]}

execute at @e[tag=StormTeleportActive,limit=1] if predicate explorers_eve:aether run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ -64 ~
execute at @e[tag=StormTeleportActive,limit=1] if predicate explorers_eve:aether run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ -64 ~ facing entity @p[gamemode=!spectator]

execute at @e[tag=StormTeleportActive,limit=1] if predicate explorers_eve:overworld run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ 400 ~
execute at @e[tag=StormTeleportActive,limit=1] if predicate explorers_eve:overworld run tp @e[type=#explorers_eve:wither_storm_part,limit=3,sort=nearest] ~ 400 ~ facing entity @p[gamemode=!spectator]

scoreboard players reset @s StormTeleportTime
scoreboard players reset @s StormTeleportSound
execute at @e[tag=StormTeleportActive,limit=1] run effect give @a[distance=1..] minecraft:darkness 5 0 true
execute at @e[tag=StormTeleportActive,limit=1] run playsound witherstormmod:wither_storm_evolves hostile @a[distance=1..] ~ ~ ~ 5 1 1
tag @e[tag=StormTeleportActive] remove StormTeleportActive