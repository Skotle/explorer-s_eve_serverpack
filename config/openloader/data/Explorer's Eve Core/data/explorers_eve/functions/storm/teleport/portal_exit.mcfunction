#When the player comes out of an invalid dimension, decide whether to teleport or not.
scoreboard players set @s StormTeleportWait 0
tag @s remove InvalidTeleport
execute if entity @a[gamemode=!spectator,distance=3000..] run function explorers_eve:storm/teleport/bowels