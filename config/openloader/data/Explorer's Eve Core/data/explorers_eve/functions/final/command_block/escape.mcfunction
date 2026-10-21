#Bye-bye!
scoreboard players add @s CommandRiseTime 1
execute store result entity @e[tag=CommandRide,limit=1,sort=nearest] Motion[1] double 0.006 run scoreboard players get @s CommandRiseTime
fill ~1 ~ ~1 ~-1 ~1 ~-1 air destroy

summon marker ~ ~ ~ {Tags:["ClusterMark"]}
function explorers_eve:final/command_block/escape_cluster_mark

execute if score @s CommandRiseTime matches 160.. run function explorers_eve:final/command_block/escape_end