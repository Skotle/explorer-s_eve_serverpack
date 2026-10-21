#Start the fight.
tag @s add Activated
tag @s add Phase1
execute store result score @s Health run data get entity @s Health
execute store result score @s HealthLimit run data get entity @s Health
scoreboard players set @s Math 2
scoreboard players operation @s HealthLimit /= @s Math
execute if entity @s[nbt={BossRespawned:0b}] run data modify entity @s DeathLootTable set value "explorers_eve:blinding_boss_first"
execute if entity @s[nbt={BossRespawned:1b}] run data modify entity @s DeathLootTable set value "explorers_eve:blinding_boss_rematch"
summon marker ~ ~ ~ {Tags:["BlindingTracker"]}

execute if entity @s[type=blue_skies:summoner] at @e[tag=BlindingTracker,limit=1,sort=nearest] run function explorers_eve:boss/blinding/summoner_mark
execute if entity @s[type=blue_skies:alchemist] at @e[tag=BlindingTracker,limit=1,sort=nearest] run function explorers_eve:boss/blinding/alchemist_mark

#For Alchemist: Set keystone to use the right arc.
execute if entity @s[type=blue_skies:alchemist] run data modify block ~ ~-7 ~ Arc set value "blue_skies:life_arc"

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true