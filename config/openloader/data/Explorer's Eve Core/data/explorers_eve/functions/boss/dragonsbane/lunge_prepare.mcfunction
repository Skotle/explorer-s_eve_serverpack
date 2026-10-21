#Delay before the next lunge.
scoreboard players set @s RandomRange 200
execute if entity @s[tag=Phase2] run scoreboard players remove @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s DragonsbaneLungeWait = @s RandomValue
scoreboard players add @s DragonsbaneLungeWait 200
execute if entity @s[tag=Phase2] run scoreboard players remove @s DragonsbaneLungeWait 50

#In phase 2, lunge in sequence.
scoreboard players set @s RandomRange 3
function explorers_eve:random
scoreboard players operation @s DragonsbaneLungeCount = @s RandomValue
scoreboard players add @s DragonsbaneLungeCount 3
execute if entity @s[tag=Phase1] run scoreboard players set @s DragonsbaneLungeCount 0

#Pause before lunging.
tag @s add DragonsbaneLunging
effect give @s minecraft:slowness 2 10 true
playsound blue_skies:entity.arachnarch.hurt hostile @a ~ ~ ~ 1 1.25
particle minecraft:angry_villager ~ ~0.5 ~ 0.5 0.3 0.5 1 10 normal
scoreboard players set @s DragonsbaneLungeTime 40
scoreboard players add @s DragonsbaneDigWait 50