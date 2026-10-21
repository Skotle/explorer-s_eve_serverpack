#Start the fight.
tag @s add AerwhaleKingActive
tag @s add Phase1

data modify entity @s FogCooldown set value 99999
attribute @s minecraft:generic.max_health modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 HPNerf -100 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true