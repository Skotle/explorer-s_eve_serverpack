#Decide what to spawn.
scoreboard players set @s RandomRange 2
function explorers_eve:random
execute if predicate explorers_eve:glitch run scoreboard players set @s RandomValue 0

#Spawn a mob.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
particle minecraft:lava ~ ~2 ~ 0.5 0.25 0.5 1 30
execute if score @s RandomValue matches 0 run summon blaze ~ ~ ~ {Motion:[0d,1.5d,0d],Tags:["MonstrositySupport"]}
execute if predicate explorers_eve:glitch run effect give @e[tag=MonstrositySupport,distance=..12] wither infinite 0 true
execute if score @s RandomValue matches 1 run summon strider ~ ~ ~ {Motion:[0d,1.5d,0d],Tags:["MonstrosityRide"],Passengers:[{id:"minecraft:wither_skeleton",Tags:["MonstrositySupport"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}]}
kill @s