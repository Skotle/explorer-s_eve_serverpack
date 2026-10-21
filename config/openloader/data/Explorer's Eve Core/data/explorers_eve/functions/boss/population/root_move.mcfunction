#Update locations and tags.
tp @s ~ ~ ~
tag @s remove Move
scoreboard players set @s StarlitRootTime 40
tag @e[tag=StarlitRootAim,limit=1,sort=nearest] add NewAim

#Tick up RandomValue until it exceeds the limit.
scoreboard players add @s RandomValue 1
execute if score @s RandomValue >= @s Math run kill @s