#Spawn a mark until all of them have spawned.
summon marker ~ 130 ~ {Tags:["CommandMobMark","Barrier"]}
scoreboard players remove @s Math 1
execute if entity @s[scores={Math=1..}] run function explorers_eve:command_block/mobs/tainted_mark_spawn
