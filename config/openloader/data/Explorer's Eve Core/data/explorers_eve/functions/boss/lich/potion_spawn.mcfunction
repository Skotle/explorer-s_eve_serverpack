#Pick a random potion, either darkness(33) or poison(19).
scoreboard players set @s RandomRange 4
function explorers_eve:random

#Spawn a potion and aim it!
execute if score @s RandomValue matches 0..1 run summon potion ^ ^ ^1.5 {Tags:["LichPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:19,Duration:100,Amplifier:0}]}}}
execute if score @s RandomValue matches 2..3 run summon potion ^ ^ ^1.5 {Tags:["LichPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:33,Duration:100,Amplifier:0}]}}}
execute as @e[tag=LichPotion,limit=1,sort=nearest] at @s facing entity @p[gamemode=!spectator] eyes run function explorers_eve:boss/lich/potion_toss
playsound minecraft:entity.witch.throw hostile @a

#Oh, and reset the timer, too.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s LichTime = @s RandomValue
scoreboard players add @s LichTime 150
