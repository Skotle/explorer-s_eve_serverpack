#Start the fight.
tag @s add Activated
tag @s add Phase1
execute if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function explorers_eve:boss/ignis/spawn_move
execute at @s run function explorers_eve:boss/ignis/arena_build

attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad61ce8430d7 BonusHP 120 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true