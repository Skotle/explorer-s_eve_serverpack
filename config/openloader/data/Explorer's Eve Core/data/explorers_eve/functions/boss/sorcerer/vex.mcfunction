#Reset timer.
scoreboard players set @s RandomRange 500
function explorers_eve:random
scoreboard players operation @s SorcererVexTime = @s RandomValue
scoreboard players add @s SorcererVexTime 1500

#Spawn four vexes.
summon vex ~1.5 ~1.35 ~ {Tags:["NewVex","SorcererVex"],HandDropChances:[0f,0f]}
summon vex ~-1.5 ~1.35 ~ {Tags:["NewVex","SorcererVex"],HandDropChances:[0f,0f]}
summon vex ~ ~1.35 ~1.5 {Tags:["NewVex","SorcererVex"],HandDropChances:[0f,0f]}
summon vex ~ ~1.35 ~-1.5 {Tags:["NewVex","SorcererVex"],HandDropChances:[0f,0f]}
execute as @e[tag=NewVex,limit=4,sort=nearest] run loot replace entity @s weapon.mainhand loot explorers_eve:vex_weapons
tag @e[tag=NewVex,limit=4,sort=nearest] remove NewVex

particle dust 1 1 1 2 ~1.5 ~1.35 ~ 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~-1.5 ~1.35 ~ 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~ ~1.35 ~1.5 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~ ~1.35 ~-1.5 0.25 0.25 0.25 1 25

playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..64] ~ ~ ~ 1 1.5 1