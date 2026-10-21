#Main manager for Nameless Sorcerer changes.
execute unless entity @s[tag=Activated] run function explorers_eve:boss/sorcerer/activate_check

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Update the bossbar.
execute store result bossbar minecraft:nameless_sorcerer value run scoreboard players get @s Health
bossbar set minecraft:nameless_sorcerer players @a[distance=..64]

#When it's hurt, call for help.
execute if score @s Health < @s HealthLimit run function explorers_eve:boss/sorcerer/clone

#No potions!
effect clear @s

#No being on fire!
execute if predicate explorers_eve:on_fire run function explorers_eve:boss/sorcerer/extinguish

#Despawn clones that are too far away.
execute as @e[type=cataclysm:nameless_sorcerer,tag=!SorcererBoss] unless entity @s[distance=..50] run tp @s ~ ~-1000 ~

#Depending on which arc is used to spawn it, use either potions or lightning.
scoreboard players remove @e[type=cataclysm:nameless_sorcerer] SorcererArcTime 1
execute as @e[type=cataclysm:nameless_sorcerer] if score @s SorcererArcTime matches ..-1 at @s run function explorers_eve:boss/sorcerer/arc

#Track strange lightning marks.
execute as @e[tag=SorcererLightningMark] at @s run function explorers_eve:boss/sorcerer/lightning_timer

#Sometimes spawn a pile of vexes.
scoreboard players remove @s SorcererVexTime 1
execute unless entity @e[type=vex,distance=..16] run scoreboard players remove @s SorcererVexTime 2
execute unless entity @e[type=vex,distance=..40] run scoreboard players remove @s SorcererVexTime 2
execute if score @s SorcererVexTime matches ..-1 run function explorers_eve:boss/sorcerer/vex

#Occasionally teleport, and do it fast if someone's nearby. Do it immediately if there's a projectile too close.
execute unless entity @a[gamemode=!spectator,distance=..6] run scoreboard players remove @s SorcererTeleportTime 1
execute if entity @a[gamemode=!spectator,distance=..6] run scoreboard players remove @s SorcererPlayerTime 1
execute if score @s SorcererTeleportTime matches ..-1 run function explorers_eve:boss/sorcerer/teleport
execute if score @s SorcererPlayerTime matches ..-1 run function explorers_eve:boss/sorcerer/teleport
execute positioned ~ ~1 ~ if entity @e[type=#explorers_eve:banned_dragon_projectiles,distance=..5] run function explorers_eve:boss/sorcerer/teleport

#Keep the tracker here.
tp @e[tag=SorcererTracker] @s

#No players? No boss.
execute unless entity @a[gamemode=!spectator,distance=..128] run function explorers_eve:boss/sorcerer/despawn