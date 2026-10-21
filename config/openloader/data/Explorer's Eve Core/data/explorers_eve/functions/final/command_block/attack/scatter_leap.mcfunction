#Jump and prepare to make a mess.
scoreboard players add @s CommandSkullWait 80
scoreboard players set @s CommandSkullTime 0
data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] set value 2d
fill ~1 ~20 ~1 ~-1 ~ ~-1 air destroy
tag @s add ScatterActive
playsound witherstormmod:withered_symbiont_hurt hostile @a[distance=..200] ~ ~ ~ 10 1.5 1