#Start breaking the wall.
scoreboard players add @s CommandWallWait 1
function explorers_eve:command_block/wall/warn
execute if entity @s[scores={CommandWallWait=4}] run function explorers_eve:command_block/wall/clear_1
execute if entity @s[scores={CommandWallWait=5}] run function explorers_eve:command_block/wall/clear_2
execute if entity @s[scores={CommandWallWait=6}] run function explorers_eve:command_block/wall/clear_end