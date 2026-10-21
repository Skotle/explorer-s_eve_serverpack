#Set the entity's motion based on what direction the player's in.
execute rotated as @s in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @s Math

kill @e[tag=RotationAim]

data modify entity @s Motion[1] set value 0.55d

scoreboard players add @s DragonsbaneDigWait 25
scoreboard players add @s DragonsbaneLungeWait 25
scoreboard players set @s DragonsbaneLungeTime 25
scoreboard players remove @s DragonsbaneLungeCount 1
execute if score @s DragonsbaneLungeCount matches ..0 run tag @s remove DragonsbaneLunging
execute if score @s DragonsbaneLungeCount matches ..0 run scoreboard players reset @s DragonsbaneLungeTime
execute if score @s DragonsbaneLungeCount matches ..0 run scoreboard players reset @s DragonsbaneLungeCount

playsound blue_skies:entity.arachnarch.lunge hostile @a ~ ~ ~ 1 1.5
playsound minecraft:entity.horse.jump hostile @a ~ ~ ~ 1 1.25