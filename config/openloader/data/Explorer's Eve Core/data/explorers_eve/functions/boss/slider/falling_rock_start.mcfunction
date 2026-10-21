#Summon one or two markers, then move them.
summon minecraft:marker ~ ~ ~ {Tags:["SliderMark","RockFallMark"]}
summon minecraft:marker ~ ~ ~ {Tags:["SliderMark","RockFallMark"]}

#Move them to the corner. Then, generate new X and Z values for them.
execute as @e[tag=RockFallMark,distance=..2] run function explorers_eve:boss/slider/falling_rock_move

#Reset the timer.
scoreboard players set @s SliderRockTime 140

#And effects!
execute unless entity @s[tag=SliderAsleep] run playsound blue_skies:entity.alchemist.prepare_rocks hostile @a ~ ~ ~ 2 1