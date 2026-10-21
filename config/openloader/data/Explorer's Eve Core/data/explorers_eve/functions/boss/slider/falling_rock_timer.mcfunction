#Tick down the timer and make particles.
scoreboard players remove @s SliderRockTime 1
particle block aether:holystone ~0.5 ~-4 ~0.5 0.3 4 0.3 0 5 force @a[distance=..40]
execute if score @s SliderRockTime matches ..-1 run function explorers_eve:boss/slider/falling_rock_end