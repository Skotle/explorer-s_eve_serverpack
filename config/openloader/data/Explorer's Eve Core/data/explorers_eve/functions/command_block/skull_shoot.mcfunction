#Same as the digging skulls, except they make a noise and don't break water.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
summon minecraft:wither_skull ~ ~ ~ {Tags:["CommandSkull","NewSkull"],NoGravity:1}
playsound minecraft:entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 2 1 0.2

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @e[tag=NewSkull,limit=1,sort=nearest] power[0] double 0.0001 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @e[tag=NewSkull,limit=1,sort=nearest] power[1] double 0.0001 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @e[tag=NewSkull,limit=1,sort=nearest] power[2] double 0.0001 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @e[tag=NewSkull,limit=1,sort=nearest] remove NewSkull