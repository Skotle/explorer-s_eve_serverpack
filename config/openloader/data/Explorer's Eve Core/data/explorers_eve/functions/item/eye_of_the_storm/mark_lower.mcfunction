#Descend until ground is found.
tp ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #explorers_eve:dig_measure_ignore if entity @p[tag=UsedStormEye,distance=..24] run function explorers_eve:item/eye_of_the_storm/mark_lower