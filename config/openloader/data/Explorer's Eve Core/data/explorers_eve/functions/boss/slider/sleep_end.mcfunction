#Wake back up and get back to normal.
tag @s remove SliderAsleep
tag @s remove Phase2Transition

data modify entity @s Awake set value 1b

playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 5 1.2
effect clear @s regeneration
effect clear @s resistance

scoreboard players remove @s SliderSentryTime 2000

#Reset the timer.
scoreboard players set @s RandomRange 120
function explorers_eve:random
scoreboard players operation @s SliderSleepTime = @s RandomValue
scoreboard players add @s SliderSleepTime 300