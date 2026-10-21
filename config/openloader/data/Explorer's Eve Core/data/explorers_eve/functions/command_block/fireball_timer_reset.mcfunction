#Summons a fireball.
function explorers_eve:command_block/fireball

#Tick down the time to spawn mobs. DEBUG, currently not spawning extra mobs.
scoreboard players remove @s CommandEntityTime 1
execute if score @s CommandEntityTime matches ..-1 run function explorers_eve:command_block/mobs/tainted_mark_check

#Reset the timer.
scoreboard players set @s CommandFireballTime 9