#Check if the Command Block is still alive, and keep checking until it's not.
execute as @e[tag=CommandBlockTracker] at @s unless entity @e[tag=CommandBattleActive,distance=..64] run function explorers_eve:command_block/end
execute as @e[tag=CommandBlockTracker] at @s if entity @e[tag=CommandBattleActive,distance=..64] run schedule function explorers_eve:command_block/end_check 1s