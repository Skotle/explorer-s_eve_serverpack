#Go invul and prep a charge. Soon, it'll fire.
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:75,Tags:["StormHold"]}
execute facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^48 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:75,Tags:["WitherChargeEnd"]}
playsound minecraft:entity.wither.hurt hostile @a[distance=..64] ~ ~ ~ 1 1.5 1

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s WitherCharge = @s RandomValue
scoreboard players add @s WitherCharge 250

tag @s add WitherCharging
scoreboard players set @s WitherChargeDelay 41
scoreboard players set @s Math 0