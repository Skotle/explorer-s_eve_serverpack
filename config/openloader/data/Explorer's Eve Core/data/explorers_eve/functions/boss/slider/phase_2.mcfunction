#Phase transition.
tag @s remove Phase1
tag @s add Phase2
tag @s add Phase2Transition
effect give @s minecraft:regeneration 10 5
effect give @s minecraft:resistance 10 3
playsound aether:entity.slider.awaken hostile @a ~ ~ ~ 5 0.7

stopsound @a[distance=..40] record explorers_eve:slider_theme_1
stopsound @a[distance=..40] record explorers_eve:slider_theme_1_intro
scoreboard players set @a[tag=SliderMusic,distance=..40] MusicTime 0

scoreboard players set @s SliderSleepCount 3
function explorers_eve:boss/slider/sleep_start