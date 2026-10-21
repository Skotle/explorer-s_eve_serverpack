#Clear out the arena.
execute at @e[tag=SliderMarkRoot,limit=1,sort=nearest] run fill ~-7 ~-1 ~-7 ~6 ~8 ~6 air destroy
kill @e[type=aether:sentry,distance=..40]
scoreboard players reset @s SliderSleepCount