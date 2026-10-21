#Start the fight.
tag @s add Activated
tag @s add Phase1
summon marker ~ ~-8 ~ {Tags:["VoidSpikeSource"]}
fill ~25 ~-1 ~25 ~-25 ~-10 ~-25 cataclysm:obsidian_brick_slab[type=double] replace cataclysm:obsidian_explosion_trap_bricks
scoreboard players set @s EnderGuardianTime 200

attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad61ce8430d7 BonusHP 117 add
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true