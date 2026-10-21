#These checks are all related to teleport logic. They're separate from the Storm checks file for ease of management.
#If the delay is active, constantly tick it down.
execute if score @s StormTeleportDelay matches 1.. run scoreboard players remove @s StormTeleportDelay 1

#Also handle the failsafe.
execute if score @s StormTeleportFailsafe matches 1.. run scoreboard players remove @s StormTeleportFailsafe 1

#Check how far away players are. Respect distractions.
execute unless entity @s[nbt={UltimateTargetDistraction:{IsDistracted:1b}}] run function explorers_eve:storm/teleport/check_distance

#If it hit the teleport cap while players were in an invalid dimension, run this when someone comes out.
execute if entity @s[tag=InvalidTeleport] if entity @a[gamemode=!spectator,predicate=!explorers_eve:invalid_teleport] run function explorers_eve:storm/teleport/portal_exit

#Then, if it's at the cap and no one's next to it, it'll teleport.
execute if score @s StormTeleportWait >= @s StormTeleportCap unless entity @a[gamemode=!spectator,predicate=explorers_eve:bowels] unless entity @a[gamemode=!spectator,distance=..1000] if entity @a[gamemode=!spectator,distance=0..] run function explorers_eve:storm/teleport/bowels

#If the Storm just entered the End, clear anger. Yes this has to be here.
execute if entity @s[tag=EndTeleport] run function explorers_eve:storm/teleport/end_anger_reset

#No teleporting if there's a player nearby.
execute if entity @a[gamemode=!spectator,distance=0..] run function explorers_eve:storm/teleport/cancel

#No teleporting if there's a player in the bowels.
execute if entity @a[gamemode=!spectator,predicate=explorers_eve:bowels] run function explorers_eve:storm/teleport/cancel

#No teleporting during the dragon fight.
execute at @e[type=minecraft:ender_dragon] if entity @a[gamemode=!spectator,distance=..600] run function explorers_eve:storm/teleport/cancel
execute at @e[tag=CrystalTimer] if entity @a[gamemode=!spectator,distance=..600] run function explorers_eve:storm/teleport/cancel

#There should be no way to enter the bowels while the Wither Storm is inaccessible, but just in case...
execute if dimension witherstormmod:bowels if entity @a[gamemode=!spectator,predicate=explorers_eve:bowels] in minecraft:overworld run tp @e[type=#explorers_eve:wither_storm_part] 0 400 0

#Keep the timer ticking once it starts.
execute if entity @e[tag=StormTeleportActive] unless entity @s[nbt={UltimateTargetDistraction:{IsDistracted:1b}}] run function explorers_eve:storm/teleport/timer