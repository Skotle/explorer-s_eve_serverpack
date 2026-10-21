#Check every tick if this needs to stop. Also no leaving Spectator.
execute unless entity @s[gamemode=spectator] run function explorers_eve:final/player/spectator
execute unless entity @e[tag=CommandRematch] unless entity @w[tag=FinalBoss] at @s run function explorers_eve:final/player/respawn