#Spawn four vexes.
summon vex ~1.5 ~1.35 ~ {Tags:["AllyVex"],HandDropChances:[0f,0f],Attributes:[{Name:generic.follow_range,Base:128},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:13.5}]}
summon vex ~-1.5 ~1.35 ~ {Tags:["AllyVex"],HandDropChances:[0f,0f],Attributes:[{Name:generic.follow_range,Base:128},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:13.5}]}
summon vex ~ ~1.35 ~1.5 {Tags:["AllyVex"],HandDropChances:[0f,0f],Attributes:[{Name:generic.follow_range,Base:128},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:13.5}]}
summon vex ~ ~1.35 ~-1.5 {Tags:["AllyVex"],HandDropChances:[0f,0f],Attributes:[{Name:generic.follow_range,Base:128},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:13.5}]}
execute as @e[tag=AllyVex,limit=4,sort=nearest] run loot replace entity @s weapon.mainhand loot explorers_eve:vex_weapons

#Vexes won't hurt players.
team join NoInfighting2 @e[tag=AllyVex,distance=..4]
team join NoInfighting2 @a
effect give @e[tag=AllyVex,distance=..4] weakness 1 40 true

particle dust 1 1 1 2 ~1.5 ~1.35 ~ 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~-1.5 ~1.35 ~ 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~ ~1.35 ~1.5 0.25 0.25 0.25 1 25
particle dust 1 1 1 2 ~ ~1.35 ~-1.5 0.25 0.25 0.25 1 25

playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.5
scoreboard players set @s Math 9999
scoreboard players set @s VexationCooldown 30
tag @s add VexationUsed