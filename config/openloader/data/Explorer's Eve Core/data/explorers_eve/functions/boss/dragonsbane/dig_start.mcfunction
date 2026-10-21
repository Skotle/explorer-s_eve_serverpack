#Delay before the next dig.
scoreboard players set @s RandomRange 200
execute if entity @s[tag=Phase2] run scoreboard players remove @s RandomRange 50
function explorers_eve:random
scoreboard players operation @s DragonsbaneDigWait = @s RandomValue
scoreboard players add @s DragonsbaneDigWait 300
execute if entity @s[tag=Phase2] run scoreboard players remove @s DragonsbaneDigWait 50

#Effects!
playsound blue_skies:entity.arachnarch.charge hostile @a ~ ~ ~ 1 1.5

#Make sure it won't die while digging!
tag @s add DragonsbaneDigging
tag @s add DragonsbaneBurrow
data merge entity @s {Invulnerable:1b,NoAI:1b}
effect give @s resistance 2 5 true
scoreboard players set @s DragonsbaneDigTime 50
scoreboard players add @s DragonsbaneLungeWait 110