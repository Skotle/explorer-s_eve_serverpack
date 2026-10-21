#Pick a random mob.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue

#Spawning time!
execute if score @s Math matches 0..9 run summon witherstormmod:sickened_zombie ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 10..14 run summon witherstormmod:sickened_villager ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 15..24 run summon witherstormmod:sickened_skeleton ~ ~1 ~ {Tags:["SummonedMob"],HandItems:[{id:bow,Count:1b}]}
execute if score @s Math matches 25..29 run summon witherstormmod:sickened_pillager ~ ~1 ~ {Tags:["SummonedMob"],HandItems:[{id:crossbow,Count:1b}]}
execute if score @s Math matches 30..34 run summon witherstormmod:sickened_vindicator ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 35..39 run summon witherstormmod:sickened_snow_golem ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 40..44 run summon witherstormmod:sickened_cow ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 45..49 run summon witherstormmod:sickened_mushroom_cow ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 50..54 run summon witherstormmod:sickened_chicken ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 55..59 run summon witherstormmod:sickened_pig ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 60..64 run summon witherstormmod:sickened_cat ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 65..69 run summon witherstormmod:sickened_wolf ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 70..74 run summon witherstormmod:sickened_bee ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 75..79 run summon witherstormmod:sickened_parrot ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 80..84 run summon witherstormmod:sickened_spider ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 85..89 run summon witherstormmod:sickened_phantom ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 90..94 run summon witherstormmod:sickened_iron_golem ~ ~1 ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 95..99 run summon witherstormmod:sickened_creeper ~ ~1 ~ {Tags:["SummonedMob"],Attributes:[{Name:generic.movement_speed,Base:0.25}],Passengers:[{id:dragon_fireball,direction:[0.0,0.1,-1.0],power:[0.0,-0.1,0.0],CreatedBySymbiont:1b}]}

#Effects.
execute as @e[tag=SummonedMob] at @s run function explorers_eve:final/command_block/spawn_effects
particle dust 1 0 1 1 ~ ~1.4 ~ 0.4 0.8 0.4 0.05 25 force

#Keep count of how many there are!
scoreboard players set @s CommandEntityTime 3
scoreboard players remove @s CommandEntityCount 1
execute unless score @s CommandEntityCount matches 1.. run tag @s remove SpawningMobs