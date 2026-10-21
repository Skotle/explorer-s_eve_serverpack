#Clear old tentacles and prepare tags.
tag @s add Tentacles
tag @w[distance=..500,tag=!TNTDistracted,tag=!BombReady] add SymbiontHelp
scoreboard players reset @s TentacleTime
scoreboard players reset @s SymbiontSkullWait
scoreboard players reset @s SymbiontSummonTime
tp @e[tag=SymbiontTentacle] ~ -1000 ~
kill @e[tag=SymbiontTentacle]

#Determine how many tentacles to spawn.
scoreboard players set @s RandomRange 4
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 5
execute if entity @s[tag=SymbiontRematch] run scoreboard players add @s Math 4

#Then spawn them all, angle them, scatter them, and make lights.
function explorers_eve:symbiont/tentacles_mark
spreadplayers ~ ~ 12 45 false @e[tag=TentacleMark]
execute as @e[tag=TentacleMark] at @s run summon witherstormmod:tentacle ~ ~ ~ {Health:20,Attributes:[{Name:generic.max_health,Base:20}],Tags:["SymbiontTentacle"],Dormant:1,YOffset:15,XOffset:5,XCurl:1.3}
execute as @e[tag=SymbiontTentacle] at @s run function explorers_eve:symbiont/tentacles_angle
execute as @e[tag=SymbiontTentacle] at @s run particle minecraft:end_rod ~ ~3 ~ 2 2 2 0.05 100 force