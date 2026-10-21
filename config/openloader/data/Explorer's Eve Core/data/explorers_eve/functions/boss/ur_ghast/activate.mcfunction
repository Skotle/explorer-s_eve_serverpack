#Start the fight.
tag @s add Phase1
tag @s add Activated
attribute @s minecraft:generic.max_health modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 BonusHP 450 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
scoreboard players set @s GhastLightningTime 1000

#Mark every ghast trap, and make sure that paths to them exist.
summon minecraft:marker ~20 ~-2 ~ {Tags:["GhastTrap","East"]}
summon minecraft:marker ~-20 ~-2 ~ {Tags:["GhastTrap","West"]}
summon minecraft:marker ~ ~-2 ~20 {Tags:["GhastTrap","South"]}
summon minecraft:marker ~ ~-2 ~-20 {Tags:["GhastTrap","North"]}
summon minecraft:marker ~ ~-2 ~ {Tags:["UrGhastTracker"]}
fill ~10 ~-3 ~1 ~21 ~-3 ~-1 twilightforest:towerwood replace air
fill ~-10 ~-3 ~1 ~-21 ~-3 ~-1 twilightforest:towerwood replace air
fill ~1 ~-3 ~10 ~-1 ~-3 ~21 twilightforest:towerwood replace air
fill ~1 ~-3 ~-10 ~-1 ~-3 ~-21 twilightforest:towerwood replace air

execute at @e[tag=GhastTrap] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace fire

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true