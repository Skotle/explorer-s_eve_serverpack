#First, reset the tick amount.
scoreboard players set @s StormTeleportTick 0

#Determine if the distance timer should tick up based on how far away players are.
execute if entity @a[gamemode=!spectator,distance=..500] run scoreboard players remove @s StormTeleportTick 90
execute if entity @a[gamemode=!spectator,distance=..1000] run scoreboard players remove @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=3000..] run scoreboard players add @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=3500..] run scoreboard players add @s StormTeleportTick 2
execute if entity @a[gamemode=!spectator,distance=4000..] run scoreboard players add @s StormTeleportTick 3
execute if entity @a[gamemode=!spectator,distance=4500..] run scoreboard players add @s StormTeleportTick 4
execute if entity @a[gamemode=!spectator,distance=5000..] run scoreboard players add @s StormTeleportTick 5
execute if entity @a[gamemode=!spectator,distance=5500..] run scoreboard players add @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=6000..] run scoreboard players add @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=6500..] run scoreboard players add @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=7000..] run scoreboard players add @s StormTeleportTick 10
execute if entity @a[gamemode=!spectator,distance=10000..] run scoreboard players set @s StormTeleportTick 999999

#If everyone's in the Nether, add time anyway. If it hits the cap while players are in the Nether, tag it for a future function.
execute if entity @a[gamemode=!spectator] unless entity @a[gamemode=!spectator,distance=0..] run scoreboard players add @s StormTeleportTick 25
execute if score @s StormTeleportWait >= @s StormTeleportCap unless entity @a[gamemode=!spectator,predicate=!explorers_eve:invalid_teleport] run tag @s add InvalidTeleport

#If the delay is active, lower the tick amount significantly.
execute if score @s StormTeleportDelay matches 1.. if entity @a[gamemode=!spectator,distance=0..] run scoreboard players remove @s StormTeleportTick 24

#Then increment the actual timer by the tick amount.
scoreboard players operation @s StormTeleportWait += @s StormTeleportTick
execute if score @s StormTeleportWait matches ..-1 run scoreboard players set @s StormTeleportWait 0