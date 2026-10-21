#Count up and wait in suspense!
scoreboard players add @s Math 1
execute store result block ~ ~ ~ ActivationAnim float 1 run scoreboard players get @s Math
particle dust 1 0 1 5 ~ ~3 ~ 5 5 5 1 1

particle dust 1 0 1 1 ~ ~ ~ 0.25 0.25 0.25 0.05 5
execute at @e[tag=SupportBeaconMark,limit=4,sort=nearest,distance=..16] run particle dust 1 0 1 1 ~ ~ ~ 0.25 0.25 0.25 0.05 3
particle dust 1 0 1 5 ~ ~3 ~ 5 5 5 1 1

effect give @a[distance=..32] minecraft:mining_fatigue 1 30 true
kill @e[type=tnt,distance=..25]
kill @e[type=creeper,distance=..25]
kill @e[type=tnt_minecart,distance=..25]
kill @e[type=end_crystal,distance=..25]

execute if score @s Math matches 370.. at @s run function explorers_eve:final/summon/explode