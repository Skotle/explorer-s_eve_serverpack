#Start the fight.
tag @s add SunSpiritActive
tag @s add Phase1

scoreboard players set @s SunSpiritAttackTime 180
scoreboard players set @s SunSpiritMinionTime 100
execute store result score @s Health run data get entity @s Health
execute store result score @s HealthLimit run data get entity @s Health

summon marker ~ ~ ~ {Tags:["SunSpiritTracker"]}