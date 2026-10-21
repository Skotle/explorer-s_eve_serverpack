#Pick a random potion, either slowness, weakness, darkness, or poison.
scoreboard players set @s RandomRange 4
function explorers_eve:random

#Spawn a potion and aim it!
execute if score @s RandomValue matches 0 run summon potion ^ ^ ^1.5 {Tags:["SorcererPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:2,Duration:200,Amplifier:1}]}}}
execute if score @s RandomValue matches 1 run summon potion ^ ^ ^1.5 {Tags:["SorcererPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:18,Duration:200,Amplifier:0}]}}}
execute if score @s RandomValue matches 2 run summon potion ^ ^ ^1.5 {Tags:["SorcererPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:19,Duration:200,Amplifier:0}]}}}
execute if score @s RandomValue matches 3 run summon potion ^ ^ ^1.5 {Tags:["SorcererPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:33,Duration:200,Amplifier:1}]}}}
execute as @e[tag=SorcererPotion,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/sorcerer/potion_toss