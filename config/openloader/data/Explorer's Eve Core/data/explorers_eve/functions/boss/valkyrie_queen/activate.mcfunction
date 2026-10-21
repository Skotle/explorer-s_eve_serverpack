#Start the fight.
tag @s add ValkyrieQueenActive
tag @s add Phase1

execute store result score @s Health run data get entity @s Health
scoreboard players set @s ValkyrieTeleportTime 500
scoreboard players set @s ValkyrieLungeTime 300
scoreboard players set @s ValkyrieColumnTime 200

attribute @s minecraft:generic.armor modifier add 1d32104f-3438-41ab-b968-ad21de8530d7 ValkyrieArmor 12 add

summon marker ~ ~ ~ {Tags:["ValkyrieQueenTracker"]}