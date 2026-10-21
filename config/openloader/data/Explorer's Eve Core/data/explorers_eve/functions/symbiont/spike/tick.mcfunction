#Increment scores and move. DEBUG, no longer actually going up or down because lag.
tp @s ^ ^ ^1 ~3 0
#execute at @s if block ~ ~-1 ~ #explorers_eve:dig_measure_ignore run function explorers_eve:symbiont/spike/mark_lower
#execute at @s unless block ~ ~ ~ #explorers_eve:dig_measure_ignore run function explorers_eve:symbiont/spike/mark_raise
execute at @s positioned over motion_blocking_no_leaves run function explorers_eve:symbiont/spike/spawn