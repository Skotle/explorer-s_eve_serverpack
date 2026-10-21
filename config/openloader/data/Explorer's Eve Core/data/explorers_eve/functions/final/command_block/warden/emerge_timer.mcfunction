#Emerging takes about this long, so movement is halted.
scoreboard players remove @s WardenEmergeTime 1
execute if score @s WardenEmergeTime matches ..-1 run function explorers_eve:final/command_block/warden/emerge_end