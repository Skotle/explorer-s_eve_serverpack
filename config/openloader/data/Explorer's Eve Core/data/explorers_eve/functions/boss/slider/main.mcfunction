#Main manager for Slider changes.
#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Phase transitions.
execute if entity @s[tag=Phase1] if entity @s[scores={Health=..200}] run function explorers_eve:boss/slider/phase_2

#Sometimes, it sleeps.
scoreboard players remove @s[tag=!Phase1] SliderSleepTime 1
execute if entity @s[tag=!SliderAsleep,scores={SliderSleepTime=..-1}] run function explorers_eve:boss/slider/sleep_start

#When it's time, wake up.
execute if entity @s[tag=SliderAsleep] run function explorers_eve:boss/slider/sleep_timer

#If making a wall, keep that moving.
execute as @e[tag=SliderWallMark] at @s facing entity @e[tag=SliderMarkRoot] eyes run function explorers_eve:boss/slider/wall_move

#Rocks have a brief delay.
execute as @e[tag=RockFallMark,distance=..40] at @s align xyz run function explorers_eve:boss/slider/falling_rock_timer

#Spawn sentries sometimes in the Simulated Showdown.
scoreboard players remove @s[tag=FinalBattle] SliderSentryTime 7
execute if score @s SliderSentryTime matches ..-1 run function explorers_eve:boss/slider/sentry_start

#If no one's around, deactivate.
execute if entity @s[nbt={BossFight:0b}] run function explorers_eve:boss/slider/deactivate