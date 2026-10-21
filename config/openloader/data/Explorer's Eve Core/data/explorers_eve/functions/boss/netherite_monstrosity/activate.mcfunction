#Start the fight.
tag @s add Activated
tag @s add Phase1
execute store result score @s Health run data get entity @s Health
scoreboard players set @s Math 0

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true