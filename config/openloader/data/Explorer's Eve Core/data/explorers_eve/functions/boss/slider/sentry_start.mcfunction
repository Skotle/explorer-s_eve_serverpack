#It's time! Pick how many sentries to spawn, and do it randomly.
execute as @e[tag=SliderMarkCorner,distance=..40] at @s unless entity @a[distance=..3] unless entity @e[type=aether:sentry,distance=..3] run tag @s add SliderCornerPotential
execute if entity @s[tag=Phase1,scores={Health=301..400}] at @e[tag=SliderCornerPotential,distance=..40,sort=random,limit=2] run function explorers_eve:boss/slider/sentry_corner
execute if entity @s[tag=Phase1,scores={Health=201..300}] at @e[tag=SliderCornerPotential,distance=..40,sort=random,limit=3] run function explorers_eve:boss/slider/sentry_corner
execute if entity @s[tag=Phase2,scores={Health=251..400}] at @e[tag=SliderCornerPotential,distance=..40,sort=random,limit=1] run function explorers_eve:boss/slider/sentry_corner
execute if entity @s[tag=Phase2,scores={Health=101..250}] at @e[tag=SliderCornerPotential,distance=..40,sort=random,limit=2] run function explorers_eve:boss/slider/sentry_corner
execute if entity @s[tag=Phase2,scores={Health=..100}] at @e[tag=SliderCornerPotential,distance=..40,sort=random,limit=1] run function explorers_eve:boss/slider/sentry_corner
tag @e[distance=..40] remove SliderCornerPotential

#Meanwhile, in the rematch, just spawn several.
execute if entity @s[tag=FinalBattle] positioned ~ ~2.5 ~ run function explorers_eve:boss/slider/sentry_spawn
execute if entity @s[tag=FinalBattle] positioned ~ ~2.5 ~ run function explorers_eve:boss/slider/sentry_spawn
execute if entity @s[tag=FinalBattle] positioned ~ ~2.5 ~ run function explorers_eve:boss/slider/sentry_spawn
execute if entity @s[tag=FinalBattle] positioned ~ ~2.5 ~ run function explorers_eve:boss/slider/sentry_spawn

#Reset the timer.
scoreboard players set @s SliderSentryTime 1000