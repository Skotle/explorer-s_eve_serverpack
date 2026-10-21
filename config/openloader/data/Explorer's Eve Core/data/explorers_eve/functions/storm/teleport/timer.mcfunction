#Tick down the timer.
scoreboard players remove @s StormTeleportTime 1
scoreboard players remove @s StormTeleportSound 1

#Always check if an Aether teleport is more fitting.
function explorers_eve:storm/teleport/aether_check

#Failsafe: Switch from teleporting to the Overworld to the Aether and vice versa if the player switches dimensions in time.
execute if score @s StormTeleportTime matches 55.. at @e[tag=StormTeleportActive,limit=1] if dimension overworld unless entity @a[distance=1..,gamemode=!spectator] in aether:the_aether if entity @a[distance=1..,gamemode=!spectator] run function explorers_eve:storm/teleport/mark
execute if score @s StormTeleportTime matches 55.. at @e[tag=StormTeleportActive,limit=1] if dimension aether:the_aether unless entity @a[distance=1..,gamemode=!spectator] in overworld if entity @a[distance=1..,gamemode=!spectator] run function explorers_eve:storm/teleport/mark

#If there's less than a minute left to arrival, start making noise.
execute if entity @s[scores={StormTeleportTime=1..60,StormTeleportSound=..0}] at @e[tag=StormTeleportActive,limit=1] run function explorers_eve:storm/teleport/sound

#If this is its first teleport, play special music.
execute if entity @s[tag=FirstTeleport,scores={StormTeleportTime=60}] at @e[tag=StormTeleportActive,limit=1] as @a[distance=1..,tag=!MusicPlaying] at @s run function explorers_eve:music/progress/first_teleport

#After enough time, enter.
execute if score @s StormTeleportTime matches ..0 unless score @s StormTeleportFailsafe matches 1.. run function explorers_eve:storm/teleport/enter