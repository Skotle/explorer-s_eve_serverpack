#Start the fight.
execute unless dimension explorers_eve:glitch run attribute @s minecraft:generic.max_health modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusHP 80 add

#Update scoreboards/health to their new values.
execute store result entity @s Health float 0.6 run attribute @s minecraft:generic.max_health get
execute store result score @s HealthLimit run data get entity @s Health
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health

attribute @s minecraft:generic.armor modifier add 1d32104f-3438-41ab-b968-ad21de8530d7 NagaArmor 15 add
execute if entity @s[tag=NewNaga] run function explorers_eve:boss/naga/split_effects
tag @s add Activated

execute if entity @s[tag=FinalBattle] run attribute @s minecraft:generic.movement_speed modifier add 1d52604f-3438-43cb-b668-ad31de8430d7 BonusSpeed 0.6 add

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true