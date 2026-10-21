#Mark the Storm's destination. If the player enters the End, it appears right above the End portal.
execute as @e[tag=StormTeleportTarget] at @s run function explorers_eve:storm/teleport/mark_remove
tag @r[gamemode=!spectator,predicate=!explorers_eve:invalid_teleport] add TeleportTarget
execute at @a[tag=TeleportTarget] run summon marker ~ 200 ~ {Tags:["StormTeleportTarget","StormTeleportActive"]}
execute unless entity @s[tag=DistanceTeleport] as @e[tag=StormTeleportActive] at @s if dimension minecraft:the_end run function explorers_eve:storm/teleport/mark_end

#Forceload.
execute at @e[tag=StormTeleportActive] run forceload add ~ ~ ~ ~

#Set how long it'll take to teleport. It's 90 seconds for the same dimension and first teleport, and 150 seconds everywhere else.
scoreboard players set @s StormTeleportTime 150
execute if entity @s[tag=DistanceTeleport] run scoreboard players set @s StormTeleportTime 90
execute if entity @s[tag=FirstTeleport] run scoreboard players set @s StormTeleportTime 90

#Lastly, remove the player tag.
tag @a remove TeleportTarget