#Start the fight.
tag @s add Activated
attribute @s minecraft:generic.follow_range modifier add 1d52604f-3438-43cb-b668-ad31de8830d7 BonusRange 88 add
attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusHP 185 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
execute store result score @s HealthLimit run data get entity @s Health

tag @s add EMPDeny
summon marker ~ ~ ~ {Tags:["HarbingerTracker"]}

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true
