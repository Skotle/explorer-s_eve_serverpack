#Prepare the lightning bolt attack.
scoreboard players set @s RandomRange 6
execute unless entity @s[tag=FinalBattle] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ValkyrieBoltPrime"]}
function explorers_eve:random
scoreboard players operation @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] RandomValue = @s RandomValue
execute if score @s Health matches ..285 run tag @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] add ShortBolt
execute as @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^1 run tp @s ~ ~ ~ ~ ~

execute if score @s Health matches ..285 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ValkyrieBoltPrime"]}
function explorers_eve:random
scoreboard players operation @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] RandomValue = @s RandomValue
execute as @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] facing entity @p[gamemode=!spectator] feet rotated ~65 ~ positioned ^ ^ ^1 run tp @s ~ ~ ~ ~ ~

execute if score @s Health matches ..285 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["ValkyrieBoltPrime"]}
function explorers_eve:random
scoreboard players operation @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] RandomValue = @s RandomValue
execute as @e[tag=ValkyrieBoltPrime,limit=1,sort=nearest,distance=..0.5] facing entity @p[gamemode=!spectator] feet rotated ~-65 ~ positioned ^ ^ ^1 run tp @s ~ ~ ~ ~ ~

execute as @e[tag=ValkyrieBoltPrime,distance=..64] at @s if entity @s[x_rotation=-90..-15] run tp @s ~ ~ ~ ~ -15
execute as @e[tag=ValkyrieBoltPrime,distance=..64] at @s if entity @s[x_rotation=15..90] run tp @s ~ ~ ~ ~ 15
execute as @e[tag=ValkyrieBoltPrime,distance=..64] at @s run function explorers_eve:boss/valkyrie_queen/bolt_mark
kill @e[tag=ValkyrieBoltPrime,distance=..64]

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 3 2

#Reset the timer.
scoreboard players set @s RandomRange 120
function explorers_eve:random
scoreboard players operation @s ValkyrieBoltTime = @s RandomValue
scoreboard players add @s ValkyrieBoltTime 400