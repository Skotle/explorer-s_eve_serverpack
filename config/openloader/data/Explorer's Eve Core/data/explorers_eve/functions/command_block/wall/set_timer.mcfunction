#Start making the wall.
scoreboard players add @s CommandWallWait 1
function explorers_eve:command_block/wall/warn
execute if entity @s[scores={CommandWallWait=4}] run function explorers_eve:command_block/wall/set_1
execute if entity @s[scores={CommandWallWait=5}] run function explorers_eve:command_block/wall/set_2
execute if entity @s[scores={CommandWallWait=6}] run function explorers_eve:command_block/wall/set_3
execute if entity @s[scores={CommandWallWait=7}] run function explorers_eve:command_block/wall/set_4
execute if entity @s[scores={CommandWallWait=8}] run function explorers_eve:command_block/wall/set_5
execute if entity @s[scores={CommandWallWait=9}] run function explorers_eve:command_block/wall/set_end