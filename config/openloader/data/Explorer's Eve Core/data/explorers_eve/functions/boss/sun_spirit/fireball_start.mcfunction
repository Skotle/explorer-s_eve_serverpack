#Make a circle of fireballs. Each phase has more.
summon area_effect_cloud ~ ~ ~ {Tags:["FireballSpawnManager"],Duration:1}
execute facing entity @p[gamemode=!spectator] eyes run tp @e[tag=FireballSpawnManager,limit=1,sort=nearest] ~ ~ ~ ~ 0
execute if score @s Health matches 31..50 as @e[tag=FireballSpawnManager,limit=1,sort=nearest] at @s run function explorers_eve:boss/sun_spirit/fireball_spawn_3
execute if score @s Health matches 6..30 as @e[tag=FireballSpawnManager,limit=1,sort=nearest] at @s run function explorers_eve:boss/sun_spirit/fireball_spawn_6
execute if score @s Health matches 0..5 as @e[tag=FireballSpawnManager,limit=1,sort=nearest] at @s run function explorers_eve:boss/sun_spirit/fireball_spawn_8
execute as @e[tag=SunSpiritFireball,distance=..5] at @s run function explorers_eve:boss/sun_spirit/fireball_shoot
kill @e[tag=FireballSpawnManager,limit=1,sort=nearest]
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.75
scoreboard players reset @s Math