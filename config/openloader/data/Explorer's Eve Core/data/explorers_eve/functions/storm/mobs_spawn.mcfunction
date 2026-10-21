#Pick a random mob.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue

#The mobs are divided into tiers, which go up depending on the Storm's phase. Even tier 1 gets a bonus because it's easier to read.
execute if score @w StormPhase matches ..4 run scoreboard players add @s Math 100
execute if score @w StormPhase matches 5 run scoreboard players add @s Math 200
execute if score @w StormPhase matches 6.. run scoreboard players add @s Math 300

#Spawning time!
#Tier 1. This is exclusive to the Twilight Forest.
execute if score @s Math matches 100..109 run summon witherstormmod:sickened_cow ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 110..139 run summon witherstormmod:sickened_chicken ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 140..159 run summon witherstormmod:sickened_pig ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 160..179 run summon witherstormmod:sickened_wolf ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 180..199 run summon witherstormmod:sickened_bee ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}

#Tier 2. This is pre-Formidibomb, so don't be too dangerous yet.
execute if score @s Math matches 200..209 run summon witherstormmod:sickened_zombie ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 210..214 run summon witherstormmod:sickened_villager ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 215..224 run summon witherstormmod:sickened_skeleton ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b,HandItems:[{id:bow,Count:1b}]}
execute if score @s Math matches 225..234 run summon witherstormmod:sickened_spider ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 235..239 run summon witherstormmod:sickened_creeper ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 240..249 run summon witherstormmod:sickened_pillager ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b,HandItems:[{id:crossbow,Count:1b}]}
execute if score @s Math matches 250..259 run summon witherstormmod:sickened_phantom ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 260..264 run summon witherstormmod:sickened_snow_golem ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 265..269 run summon witherstormmod:sickened_cow ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 270..279 run summon witherstormmod:sickened_pig ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 280..284 run summon witherstormmod:sickened_cat ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 285..289 run summon witherstormmod:sickened_wolf ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 290..299 run summon witherstormmod:sickened_bee ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}

#Tier 3. This is post-Formidibomb, so mob chances are weighted stronger towards danger.
execute if score @s Math matches 300..304 run summon witherstormmod:sickened_zombie ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 305..309 run summon witherstormmod:sickened_villager ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 310..319 run summon witherstormmod:sickened_skeleton ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b,HandItems:[{id:bow,Count:1b}]}
execute if score @s Math matches 320..329 run summon witherstormmod:sickened_spider ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 330..339 run summon witherstormmod:sickened_creeper ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 340..349 run summon witherstormmod:sickened_pillager ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b,HandItems:[{id:crossbow,Count:1b}]}
execute if score @s Math matches 350..359 run summon witherstormmod:sickened_vindicator ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b,HandItems:[{id:iron_axe,Count:1b}]}
execute if score @s Math matches 360..369 run summon witherstormmod:sickened_phantom ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 370..374 run summon witherstormmod:sickened_snow_golem ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 375..379 run summon witherstormmod:sickened_cow ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 380..384 run summon witherstormmod:sickened_pig ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 385..389 run summon witherstormmod:sickened_cat ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 390..394 run summon witherstormmod:sickened_wolf ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}
execute if score @s Math matches 395..399 run summon witherstormmod:sickened_bee ~ ~1 ~ {Tags:["StormSpawned"],PersistenceRequired:1b}

#Effects.
particle dust 1 0 1 2 ~ ~0.4 ~ 0.3 0.6 0.3 0.05 64 force
playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 1 0.75
kill @s