#Summon two potions, one darkness and one poison.
summon potion ~ ~2 ~ {Tags:["LichPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:19,Duration:100,Amplifier:0}]}}}
summon potion ~ ~2 ~ {Tags:["LichPotion"],Item:{id:"lingering_potion",Count:1,tag:{CustomPotionEffects:[{Id:33,Duration:100,Amplifier:0}]}}}
execute as @e[tag=LichPotion,limit=2,sort=nearest] at @s run function explorers_eve:final/command_block/lich/potion_toss

#Oh, and reset the timer, too.
scoreboard players set @s RandomRange 40
function explorers_eve:random
scoreboard players operation @s LichTime = @s RandomValue
scoreboard players add @s LichTime 60
