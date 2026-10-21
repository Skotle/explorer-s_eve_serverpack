#Phase transition.
tag @s add Split
tag @s add NoLoot
execute store result entity @s Health float 0.5 run scoreboard players get @s HealthLimit
execute store result score @s Health run data get entity @s Health
execute store result score @s HealthLimit run data get entity @s Health
data modify entity @s DeathLootTable set value "minecraft:empty"
playsound twilightforest:entity.twilightforest.naga.hurt hostile @a ~ ~ ~ 3 1.5
particle minecraft:explosion_emitter ~ ~10 ~ 5 5 5 1 50

summon twilightforest:naga ~ ~ ~ {Tags:["Split","NoLoot","NewNaga"]}
execute as @e[tag=NewNaga,limit=1,sort=nearest] run function explorers_eve:boss/naga/activate

stopsound @a[distance=..40] record explorers_eve:naga_theme_1
stopsound @a[distance=..40] record explorers_eve:naga_theme_1_intro
scoreboard players set @a[tag=NagaMusic,distance=..40] MusicTime 0