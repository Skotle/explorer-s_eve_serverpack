#Reset timer.
scoreboard players set @s RandomRange 200
function explorers_eve:random
scoreboard players operation @s SorcererTeleportTime = @s RandomValue
scoreboard players add @s SorcererTeleportTime 550
scoreboard players set @s SorcererPlayerTime 50

#Teleport.
summon marker ~ ~ ~ {Tags:[SorcererTeleportMark]}
execute as @e[tag=SorcererTeleportMark] at @p[gamemode=!spectator,distance=..128] run spreadplayers ~ ~ 0 16 false @s
execute as @e[tag=SorcererTeleportMark] at @s if entity @a[gamemode=!spectator,distance=..8] facing entity @p[gamemode=!spectator] eyes run tp @s ^ ^ ^-8
execute at @e[tag=SorcererTeleportMark,limit=1,sort=nearest] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
kill @e[tag=SorcererTeleportMark]

playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 4
particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100

particle dust 1 1 1 2 ~ ~1 ~ 0.25 0.25 0.25 1 25
summon vex ~ ~1.35 ~ {Tags:["NewVex","SorcererVex"],HandDropChances:[0f,0f]}
execute as @e[tag=NewVex,limit=1,sort=nearest] run loot replace entity @s weapon.mainhand loot explorers_eve:vex_weapons
tag @e[tag=NewVex,limit=1,sort=nearest] remove NewVex

execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 4
execute at @s run particle dust 1 0 1 1 ~ ~1.25 ~ 0.3 0.7 0.3 10 100