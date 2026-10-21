#Go invul and prep a charge. Soon, it'll fire.
data modify entity @s NoAI set value 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:75,Tags:["WitherHold"]}
execute facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^15 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:75,Tags:["WitherChargeEnd"]}
tp @e[tag=WitherHold,limit=1,distance=..20,sort=nearest] @s
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 3 1.5

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s WitherCharge = @s RandomValue
scoreboard players add @s WitherCharge 100

tag @s add WitherCharging
scoreboard players set @s WitherShoot 12
scoreboard players set @s WitherChargeDelay 41
scoreboard players set @s Math 0