#Give it resistance so the fight lasts longer.
tag @s remove Phase1
tag @s add Phase2
attribute @s minecraft:generic.max_health modifier add 1d32604f-3438-41cb-b968-ad31de8430d7 Phase2HP 140 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
data modify entity @s NumHeads set value 7b
playsound twilightforest:entity.twilightforest.hydra.roar hostile @a ~ ~ ~ 3 1.5
particle minecraft:explosion_emitter ~ ~10 ~ 5 5 5 1 50

stopsound @a[distance=..40] record explorers_eve:hydra_theme_1
stopsound @a[distance=..40] record explorers_eve:hydra_theme_1_intro
scoreboard players set @a[tag=HydraMusic,distance=..40] MusicTime 0