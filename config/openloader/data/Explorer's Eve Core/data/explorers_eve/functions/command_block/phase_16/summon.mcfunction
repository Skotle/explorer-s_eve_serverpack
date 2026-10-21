#This function summons things on a brief delay. It looks cool.
execute if score @s CommandSpawnerCount matches 1.. run function explorers_eve:command_block/spawner
scoreboard players remove @s CommandSpawnerCount 1
execute if score @s CommandSpawnerCount matches ..0 run kill @e[tag=CommandPhase16Summon,limit=1,sort=nearest]
schedule function explorers_eve:command_block/phase_16/check 10t