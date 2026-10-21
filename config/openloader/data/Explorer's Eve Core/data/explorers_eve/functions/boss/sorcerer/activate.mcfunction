#Start the fight.
tag @s add Activated

#Scoreboards!
execute store result entity @s Health float 1 run attribute @s minecraft:generic.max_health get
execute store result score @s Health run data get entity @s Health
execute store result score @s HealthLimit run data get entity @s Health
scoreboard players remove @s HealthLimit 50
scoreboard players set @s SorcererVexTime 1000
scoreboard players set @s SorcererTeleportTime 300
scoreboard players set @s SorcererPlayerTime 50
scoreboard players set @s SorcererArcTime 100

#Pretty lights!
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.alchemist.prepare_conversion hostile @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.alchemist.prepare_blindness hostile @a ~ ~ ~ 1 1.5
playsound blue_skies:entity.summoner.prepare_attack hostile @a ~ ~ ~ 1 1.5
particle blue_skies:star_flare 1 0 1 ~ ~1 ~ 0.25 0.5 0.25 0.1 100

#Prepare a bossbar.
bossbar add nameless_sorcerer "Nameless Sorcerer"
bossbar set minecraft:nameless_sorcerer color yellow
execute store result bossbar minecraft:nameless_sorcerer max run scoreboard players get @e[tag=SorcererBoss,limit=1,sort=nearest] Health
execute store result bossbar minecraft:nameless_sorcerer value run scoreboard players get @e[tag=SorcererBoss,limit=1,sort=nearest] Health

#And a marker!
summon marker ~ ~ ~ {Tags:["SorcererTracker"]}
summon marker ~ ~-3 ~ {Tags:["SorcererBeaconTracker"]}

#Give the boss infinite Remedy to prevent cheesing with Aether poison.
effect give @s aether:remedy infinite 0 true