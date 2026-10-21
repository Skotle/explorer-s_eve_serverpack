#Start the fight.
function explorers_eve:boss/population/phase_1
tag @s add Activated
attribute @s[type=blue_skies:arachnarch] minecraft:generic.max_health modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 LessHP -200 add
attribute @s[type=blue_skies:starlit_crusher] minecraft:generic.max_health modifier add 1d58604f-3438-41cb-b968-ad31de8430d7 LessHP -100 add
execute store result entity @s Health float 0.5 run attribute @s minecraft:generic.max_health get
execute store result score @s HealthLimit run data get entity @s Health
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
execute if entity @s[nbt={BossRespawned:0b}] run data modify entity @s DeathLootTable set value "explorers_eve:population_boss_first"
execute if entity @s[nbt={BossRespawned:1b}] run data modify entity @s DeathLootTable set value "explorers_eve:population_boss_rematch"

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true