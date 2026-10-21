#Move the marker.
tp @s ^ ^ ^-0.3
execute align xyz run function explorers_eve:boss/slider/wall_build
execute at @s unless entity @e[tag=SliderMarkRoot,distance=..7] run kill @s