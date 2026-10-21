#Get a random number. If it's an upwards spike, use a different range.
scoreboard players set @s RandomRange 10
function explorers_eve:random
execute if entity @s[nbt={Downward:0b}] run scoreboard players add @s RandomValue 10

#Downwards spikes drop damaging potions.
execute if score @s RandomValue matches 0..2 run summon potion ~ ~ ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:2,Duration:300,Amplifier:1}]}}}
execute if score @s RandomValue matches 3..4 run summon potion ~ ~ ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Duration:300,Amplifier:0}]}}}
execute if score @s RandomValue matches 5..7 run summon potion ~ ~ ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:19,Duration:300,Amplifier:1}]}}}
execute if score @s RandomValue matches 8..9 run summon potion ~ ~ ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:20,Duration:300,Amplifier:1}]}}}

#Downwards potions don't drop too close to a player.
execute if score @s RandomValue matches 0..9 if entity @a[gamemode=!spectator,distance=..6.75] run kill @e[tag=AlchemyPotion,limit=1,sort=nearest]

#Upwards spikes launch helpful potions.
execute if score @s RandomValue matches 10..12 run summon potion ~ ~0.75 ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:1,Duration:200,Amplifier:0}]}}}
execute if score @s RandomValue matches 13..14 run summon potion ~ ~0.75 ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:3,Duration:200,Amplifier:0}]}}}
execute if score @s RandomValue matches 15..17 run summon potion ~ ~0.75 ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:11,Duration:200,Amplifier:0}]}}}
execute if score @s RandomValue matches 18..19 run summon potion ~ ~0.75 ~ {Tags:["AlchemyPotion"],Item:{id:"splash_potion",Count:1,tag:{CustomPotionEffects:[{Id:22,Duration:200,Amplifier:0}]}}}

#I do mean launch.
execute if score @s RandomValue matches 10..19 as @e[tag=AlchemyPotion,distance=..1] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:item/alchemy_scroll/aim

#Tag the spike so it won't spam potions if the player uses the scroll too quick!
tag @s add AlchemySpike