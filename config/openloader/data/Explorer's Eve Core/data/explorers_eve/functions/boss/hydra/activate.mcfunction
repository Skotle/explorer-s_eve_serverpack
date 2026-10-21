#Start the fight.
tag @s[tag=!FinalBattle] add Phase1
tag @s add Activated
scoreboard players set @s HydraFire 100
fill ~15 ~2 ~15 ~-15 ~-5 ~-15 air replace grass
fill ~10 ~-5 ~10 ~-10 ~8 ~-10 fire replace #minecraft:logs_that_burn
fill ~32 ~-5 ~32 ~ ~8 ~ fire replace #minecraft:leaves
fill ~-32 ~-5 ~-32 ~ ~8 ~ fire replace #minecraft:leaves
fill ~32 ~-5 ~-32 ~ ~8 ~ fire replace #minecraft:leaves
fill ~-32 ~-5 ~32 ~ ~8 ~ fire replace #minecraft:leaves
playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2
summon marker ~ ~ ~ {Tags:["HydraTracker"]}

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true