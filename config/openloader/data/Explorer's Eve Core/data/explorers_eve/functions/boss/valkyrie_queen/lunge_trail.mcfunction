#Leave a trail of bolts.
scoreboard players remove @s ValkyrieLungeCount 1
execute if score @s ValkyrieLungeCount matches ..-1 run tag @s remove ValkyrieLunging

#Make a marker.
summon marker ~ ~ ~ {Tags:["ValkyrieBoltMark"]}
scoreboard players set @e[tag=ValkyrieBoltMark,limit=1,sort=nearest] ValkyrieBoltTime 40