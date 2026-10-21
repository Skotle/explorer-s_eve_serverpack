#Start the fight.
tag @s add Activated
data merge entity @s {HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],CanPickUpLoot:0b}
attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusHP 15 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get

scoreboard players set @s PhantomTime 30

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true