#Spawn a mark until all of them have spawned.
summon marker ~ ~ ~ {Tags:["SorcererSpawnMark"]}
scoreboard players remove @s Math 1
execute if score @s Math matches 1.. run function explorers_eve:boss/sorcerer/clone_mark
