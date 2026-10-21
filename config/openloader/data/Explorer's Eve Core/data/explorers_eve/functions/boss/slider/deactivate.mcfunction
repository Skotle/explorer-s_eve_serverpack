#Reset the fight if players die/flee.
tag @s remove SliderActive
tag @s remove Phase1
tag @s remove Phase2
tag @s remove Phase2Transition
tag @s remove SliderAsleep

scoreboard players reset @s Health
scoreboard players reset @s SliderSleepTime
scoreboard players reset @s SliderSleepCount
scoreboard players reset @s SliderSentryTime
scoreboard players reset @s SliderRockTime

data modify entity @s Invulnerable set value 0

execute at @e[tag=SliderMarkRoot,limit=1,sort=nearest] run fill ~-7 ~-1 ~-7 ~6 ~8 ~6 air destroy
execute at @e[tag=SliderMarkRoot,limit=1,sort=nearest] run fill ~1 ~-1 ~1 ~-2 ~-1 ~-2 aether:locked_carved_stone replace air

kill @e[type=aether:sentry,distance=..24]
kill @e[tag=SliderRock,distance=..40]
kill @e[tag=SliderMark,distance=..40]