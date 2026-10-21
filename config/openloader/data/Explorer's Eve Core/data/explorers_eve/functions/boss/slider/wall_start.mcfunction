#Prepare to make walls.
summon marker ~0.25 ~ ~ {Tags:["SliderMark","SliderWallMark"]}
summon marker ~-0.25 ~ ~ {Tags:["SliderMark","SliderWallMark"]}
summon marker ~ ~ ~0.25 {Tags:["SliderMark","SliderWallMark"]}
summon marker ~ ~ ~-0.25 {Tags:["SliderMark","SliderWallMark"]}
playsound blue_skies:entity.alchemist.prepare_rocks hostile @a ~ ~ ~ 2 1
scoreboard players add @s SliderSleepCount 1