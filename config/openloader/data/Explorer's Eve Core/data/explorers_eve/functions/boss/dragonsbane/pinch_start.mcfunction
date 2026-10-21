#Mark the victim.
tag @p[predicate=explorers_eve:pinched] add DragonsbanePinched

#Give effects.
effect give @p[tag=DragonsbanePinched] minecraft:slowness 7 0
effect give @p[tag=DragonsbanePinched] minecraft:nausea 7 0
effect give @p[tag=DragonsbanePinched] aether:inebriation 7 0

#Don't start attacking partway through a pinch, please.
scoreboard players add @s DragonsbaneDigWait 60
scoreboard players add @s DragonsbaneLungeWait 60
scoreboard players reset @s DragonsbaneLungeTime
scoreboard players reset @s DragonsbaneLungeCount
tag @s remove DragonsbaneLunging
effect clear @s slowness

#Decide whether or not to burrow while pinching. Override if the player was just pinched.
scoreboard players set @s RandomRange 3
function explorers_eve:random
execute if score @s DragonsbaneComboDelay matches 1.. run scoreboard players set @s RandomValue 0
execute if score @s RandomValue matches ..0 run scoreboard players set @s DragonsbaneDigWait 0

#Effects!
playsound blue_skies:entity.arachnarch.stunned hostile @a ~ ~ ~ 1 1.25
playsound witherstormmod:wither_storm_bite hostile @a ~ ~ ~ 1 1.25