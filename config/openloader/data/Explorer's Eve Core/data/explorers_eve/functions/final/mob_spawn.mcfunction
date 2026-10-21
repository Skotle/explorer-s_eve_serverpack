#Pick a random mob.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue

#Spawning time!
execute if score @s Math matches 0..9 run summon witherstormmod:sickened_zombie ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 10..14 run summon witherstormmod:sickened_villager ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 15..24 run summon witherstormmod:sickened_skeleton ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:bow,Count:1b}]}
execute if score @s Math matches 25..29 run summon witherstormmod:sickened_pillager ~ ~ ~ {Tags:["SummonedMob"],HandItems:[{id:crossbow,Count:1b}]}
execute if score @s Math matches 30..34 run summon witherstormmod:sickened_vindicator ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 35..39 run summon witherstormmod:sickened_snow_golem ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 40..44 run summon witherstormmod:sickened_cow ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 45..49 run summon witherstormmod:sickened_mushroom_cow ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 50..54 run summon witherstormmod:sickened_chicken ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 55..59 run summon witherstormmod:sickened_pig ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 60..64 run summon witherstormmod:sickened_cat ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 65..69 run summon witherstormmod:sickened_wolf ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 70..74 run summon witherstormmod:sickened_bee ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 75..79 run summon witherstormmod:sickened_parrot ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 80..84 run summon witherstormmod:sickened_spider ~ ~ ~ {Tags:["SummonedMob"],Passengers:[{id:"witherstormmod:sickened_skeleton",Tags:["SummonedMob"],HandItems:[{id:bow,Count:1b}]}]}
execute if score @s Math matches 85..89 run summon witherstormmod:sickened_phantom ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 90..94 run summon witherstormmod:sickened_iron_golem ~ ~ ~ {Tags:["SummonedMob"]}
execute if score @s Math matches 95..99 run summon witherstormmod:sickened_creeper ~ ~ ~ {Tags:["SummonedMob"],Attributes:[{Name:generic.movement_speed,Base:0.3}],Passengers:[{id:dragon_fireball,direction:[0.0,0.1,-1.0],power:[0.0,-0.1,0.0],CreatedBySymbiont:1b}]}

execute as @e[tag=SummonedMob] at @s run function explorers_eve:final/mob_effects

#Repeat until all mobs are spawned.
scoreboard players remove @s CommandEntityCount 1
execute if score @s CommandEntityCount matches 1.. run function explorers_eve:final/mob_spawn