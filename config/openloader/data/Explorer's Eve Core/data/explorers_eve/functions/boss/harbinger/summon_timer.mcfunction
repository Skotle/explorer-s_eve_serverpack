#Tick up a timer for the animation. This lasts exactly as long as the music intro.
scoreboard players add @s Math 1

#Rotation. It rotates faster the closer the spawn is.
execute if score @s Math matches 37..258 run tp @s ~ ~0.08 ~
execute if score @s Math matches 0..73 at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s Math matches 74..147 at @s run tp @s ~ ~ ~ ~3 ~
execute if score @s Math matches 148..221 at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s Math matches 222..258 at @s run tp @s ~ ~ ~ ~9 ~

#Particles! Start easy, then get more intense over time.
execute unless score @s Math matches 258.. run particle minecraft:dust 0.75 0 0 1 ^8 ^ ^ 0.05 0.05 0.05 1 5 force
execute unless score @s Math matches 258.. run particle minecraft:dust 0.75 0 0 1 ^-8 ^ ^ 0.05 0.05 0.05 1 5 force
execute unless score @s Math matches 258.. run particle minecraft:dust 0.75 0 0 1 ^ ^ ^8 0.05 0.05 0.05 1 5 force
execute unless score @s Math matches 258.. run particle minecraft:dust 0.75 0 0 1 ^ ^ ^-8 0.05 0.05 0.05 1 5 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.25 0.25 0.25 1 2 force
particle minecraft:dust 0.5 0 0 1 ~ ~ ~ 0.25 0.25 0.25 1 2 force
particle minecraft:dust 0.5 0 0 2 ~ ~ ~ 0.25 0.25 0.25 1 1 force
execute if score @s Math matches 258.. run particle minecraft:dust 0 0 0 3 ~ ~ ~ 1 1 1 1 3 force
execute if score @s Math matches 258.. run particle minecraft:dust 0.5 0 0 3 ~ ~ ~ 1 1 1 1 3 force
execute if score @s Math matches 258.. run particle minecraft:dust 0.5 0 0 5 ~ ~ ~ 1 1 1 1 2 force
particle cataclysm:lightning ~ ~ ~ 0 0 0 0.5 1 force
execute if score @s Math matches 147.. run particle cataclysm:lightning ~ ~ ~ 0 0 0 0.75 1 force
execute if score @s Math matches 258.. run particle cataclysm:lightning ~ ~ ~ 0 0 0 1.5 1 force
execute if score @s Math matches 291.. run particle minecraft:explosion ~ ~ ~ 0 0 0 5 1 force

#Extra particles rotating the other way for the second half!
execute if score @s Math matches 148..221 as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] at @s run tp @s ~ ~0.08 ~ ~-5 ~
execute if score @s Math matches 222..258 as @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] at @s run tp @s ~ ~0.08 ~ ~-9 ~
execute if score @s Math matches 148..258 at @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] run particle minecraft:dust 1 0 0 1 ^5 ^7 ^ 0.05 0.05 0.05 1 5 force
execute if score @s Math matches 148..258 at @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] run particle minecraft:dust 1 0 0 1 ^-5 ^7 ^ 0.05 0.05 0.05 1 5 force
execute if score @s Math matches 148..258 at @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] run particle minecraft:dust 1 0 0 1 ^ ^-7 ^5 0.05 0.05 0.05 1 5 force
execute if score @s Math matches 148..258 at @e[tag=HarbingerSummonMark2,limit=1,sort=nearest,distance=..1] run particle minecraft:dust 1 0 0 1 ^ ^-7 ^-5 0.05 0.05 0.05 1 5 force

#Major effect milestones. Effects 1 is unused since that's when it starts levitating.
#execute if score @s Math matches 36 run function explorers_eve:boss/harbinger/summon_effects_1
execute if score @s Math matches 73 run function explorers_eve:boss/harbinger/summon_effects_2
execute if score @s Math matches 110 run function explorers_eve:boss/harbinger/summon_effects_3
execute if score @s Math matches 147 run function explorers_eve:boss/harbinger/summon_effects_4
execute if score @s Math matches 184 run function explorers_eve:boss/harbinger/summon_effects_5
execute if score @s Math matches 221 run function explorers_eve:boss/harbinger/summon_effects_6
execute if score @s Math matches 258 run function explorers_eve:boss/harbinger/summon_effects_7
execute if score @s Math matches 295 run function explorers_eve:boss/harbinger/summon_end