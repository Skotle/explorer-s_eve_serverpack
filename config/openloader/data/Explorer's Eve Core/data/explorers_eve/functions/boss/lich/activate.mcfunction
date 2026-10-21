#Start the fight.
tag @s add LichBoss
tag @s add Phase1
tag @s add ShieldsActive
attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusHP 100 add
attribute @s minecraft:generic.attack_damage modifier add 1c52604f-3438-436b-b668-ad32ae8430d7 DamageNerf -1 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
data modify entity @s MinionsToSummon set value 5

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true