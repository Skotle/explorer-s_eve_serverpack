#Just go invul for a few seconds to scare everyone.
data modify entity @s Invul set value 60
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["WitherHold"],NoGravity:0b}
playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 3 1.5

scoreboard players set @s RandomRange 60
function explorers_eve:random
scoreboard players operation @s WitherInvul = @s RandomValue
scoreboard players add @s WitherInvul 240

tag @s add WitherInvul
scoreboard players set @s WitherShoot 12