#Fall asleep and do nothing for a little bit.
tag @s add SliderAsleep

data modify entity @s Awake set value 0b
data modify entity @s Motion set value [0d,0d,0d]

playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 5 1.2
effect give @s minecraft:regeneration 10 2
effect give @s minecraft:resistance 10 3

scoreboard players add @s SliderSentryTime 2000

#If conditions are right, try to teleport.
execute if score @s Health matches ..250 unless entity @s[tag=Phase2Transition] unless entity @s[tag=FinalBattle] as @e[tag=SliderMarkCorner,distance=..40] at @s unless entity @a[distance=..4] run tag @s add SliderMarkTeleport
execute at @e[tag=SliderMarkTeleport,limit=1,sort=random,distance=..40] run function explorers_eve:boss/slider/teleport
tag @e[distance=..40] remove SliderMarkTeleport

execute if score @s Health matches ..180 unless entity @s[tag=FinalBattle] at @e[tag=SliderMarkRoot,limit=1,sort=nearest] run function explorers_eve:boss/slider/wall_start

scoreboard players add @s SliderSleepCount 1
execute if score @s SliderSleepCount matches 3.. unless entity @s[tag=FinalBattle] run function explorers_eve:boss/slider/arena_clear

#Reset the timer.
scoreboard players set @s RandomRange 60
function explorers_eve:random
scoreboard players operation @s SliderSleepTime = @s RandomValue
scoreboard players add @s SliderSleepTime 60

execute if entity @s[tag=Phase2Transition] run scoreboard players set @s SliderSleepTime 143