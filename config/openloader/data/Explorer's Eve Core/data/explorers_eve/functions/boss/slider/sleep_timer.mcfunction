#While this is happening, rocks fall over time.
scoreboard players remove @s[scores={Health=..300}] SliderRockTime 10
scoreboard players remove @s[scores={Health=..100}] SliderRockTime 50
scoreboard players remove @s SliderRockTime 40
scoreboard players set @s[tag=FinalBattle] SliderRockTime 999
execute if score @s SliderRockTime matches ..-1 at @e[tag=SliderMarkCeiling,limit=1,sort=nearest] run function explorers_eve:boss/slider/falling_rock_start

#Eventually, it wakes up.
execute if score @s SliderSleepTime matches ..-1 run function explorers_eve:boss/slider/sleep_end