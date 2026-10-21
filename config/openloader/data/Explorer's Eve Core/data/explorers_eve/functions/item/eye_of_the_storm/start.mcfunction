#Activates every time the player uses the Eye of the Storm to deal damage.
advancement revoke @s only explorers_eve:use_eye_of_the_storm

#Tag this player.
tag @s add UsedStormEye
tag @s add StormEyeCooldown
scoreboard players set @s StormEyeCooldown 30

#Spawn many marks.

execute align y rotated ~30 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~90 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~150 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~210 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~270 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~330 0 run summon area_effect_cloud ^ ^ ^1 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~40 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~100 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~160 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~220 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~280 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~340 0 run summon area_effect_cloud ^ ^ ^2 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~50 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~110 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~170 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~230 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~290 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~350 0 run summon area_effect_cloud ^ ^ ^3 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~60 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~120 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~180 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~240 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~300 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~360 0 run summon area_effect_cloud ^ ^ ^4 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~70 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~130 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~190 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~250 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~310 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~370 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~80 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~140 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~200 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~260 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~320 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~380 0 run summon area_effect_cloud ^ ^ ^6 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

execute align y rotated ~90 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~150 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~210 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~270 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~330 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
execute align y rotated ~390 0 run summon area_effect_cloud ^ ^ ^7 {Duration:30,Tags:["DefenseSpikeMark"]}
scoreboard players add @e[tag=DefenseSpikeMark] Math 3

#Marks don't spawn in the ground, and they despawn if too far away.
execute as @e[tag=DefenseSpikeMark] at @s if block ~ ~-1 ~ #explorers_eve:dig_measure_ignore run function explorers_eve:item/eye_of_the_storm/mark_lower
execute as @e[tag=DefenseSpikeMark] at @s unless block ~ ~ ~ #explorers_eve:dig_measure_ignore run function explorers_eve:item/eye_of_the_storm/mark_raise
execute as @e[tag=DefenseSpikeMark] at @s unless entity @p[tag=UsedStormEye,distance=..20] run kill @s

#Clear everything.
tag @s remove UsedStormEye

execute if entity @e[tag=DefenseSpikeMark] run schedule function explorers_eve:item/eye_of_the_storm/tick 1t