#Triggers either at half health or when all players die/run away. Store how much health it has.
execute store result score $DragonsbaneData Health run scoreboard players get @s Health

#Tag someone, ANYONE, to be haunted by Dragonsbane. Get lower standards each attempt until anyone not a spectator can get it.
tag @r[gamemode=!spectator,tag=!DragonsbaneStalking,distance=..24] add DragonsbaneStalking
execute unless entity @a[gamemode=!spectator,tag=DragonsbaneStalking,distance=..24] run tag @r[gamemode=!spectator,tag=!DragonsbaneStalking,distance=..128] add DragonsbaneStalking
execute unless entity @a[gamemode=!spectator,tag=DragonsbaneStalking,distance=..128] run tag @r[gamemode=!spectator,tag=!DragonsbaneStalking,predicate=explorers_eve:overworld] add DragonsbaneStalking
execute unless entity @a[gamemode=!spectator,tag=DragonsbaneStalking,predicate=explorers_eve:overworld] run tag @r[gamemode=!spectator,tag=!DragonsbaneStalking] add DragonsbaneStalking

#The stalked player gets 5 minutes of freedom.
scoreboard players set @a[tag=DragonsbaneStalking] DragonsbaneStalkTime -300

#Effects!
playsound blue_skies:entity.arachnarch.charge hostile @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.arachnarch.screech hostile @a ~ ~ ~ 1 1.5

#Make sure it won't die while despawning, and drop any pinched players!
function explorers_eve:boss/dragonsbane/pinch_end
kill @e[tag=DragonsbaneTracker,limit=1,sort=nearest]
scoreboard players set @s DragonsbaneDigWait 999
tag @s remove DragonsbaneDigging
tag @s remove DragonsbaneBurrow
tag @s remove DragonsbaneEmerge
tag @s remove DragonsbaneLunging
tag @s add DragonsbaneEscaping
data merge entity @s {Invulnerable:1b,NoAI:1b}
effect give @s resistance 2 5 true
scoreboard players set @s DragonsbaneDigTime 40