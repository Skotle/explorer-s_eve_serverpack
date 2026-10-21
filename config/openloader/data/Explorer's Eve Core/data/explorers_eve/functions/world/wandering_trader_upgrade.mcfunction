#The Wandering Trader has many more trades, all of which only work once and give Coruscant Panels.
playsound minecraft:entity.wandering_trader.yes neutral @a ~ ~ ~ 5 1.2
summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;4547222],FadeColors:[I;15377456]}]}}}}

#Trade a random color of Glazed Terracotta.
scoreboard players set @s RandomRange 16
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute if score @s Math matches 0 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:white_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 1 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:orange_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 2 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:magenta_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 3 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:light_blue_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 4 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:yellow_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 5 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:lime_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 6 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:pink_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 7 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:gray_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 8 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:light_gray_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 9 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:cyan_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 10 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:purple_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 11 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:blue_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 12 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:brown_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 13 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:green_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 14 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:red_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 15 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:black_glazed_terracotta",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}

#Trade something from another dimension.
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute if score @s Math matches 0..1 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:quartz_block",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 2 run data modify entity @s Offers.Recipes append value {buy:{id:"twilightforest:torchberries",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 3 run data modify entity @s Offers.Recipes append value {buy:{id:"twilightforest:ironwood_ingot",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 4 run data modify entity @s Offers.Recipes append value {buy:{id:"twilightforest:arctic_fur",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}

#Trade some Overworld block.
scoreboard players set @s RandomRange 30
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute if score @s Math matches 0..4 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:deepslate",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 5..9 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:amethyst_block",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 10..14 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:ice",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 15..19 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:sandstone",Count:64b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 20..24 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:red_sandstone",Count:32b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 25 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:tube_coral_block",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 26 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:brain_coral_block",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 27 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:bubble_coral_block",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 28 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:fire_coral_block",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 29 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:horn_coral_block",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}

#Trade some drops.
scoreboard players set @s RandomRange 12
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute if score @s Math matches 0 run data modify entity @s Offers.Recipes append value {buy:{id:"witherstormmod:withered_flesh",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 1 run data modify entity @s Offers.Recipes append value {buy:{id:"witherstormmod:withered_bone",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 2..3 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:slime_ball",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 4..5 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:glow_ink_sac",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 6..7 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:rabbit_hide",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 8..9 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:prismarine_crystals",Count:8b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}
execute if score @s Math matches 10..11 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:flint",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:1b},maxUses:1b}

#Trade something really annoying.
scoreboard players set @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute if score @s Math matches 0 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:rabbit_stew",Count:1b},buyB:{id:"minecraft:pumpkin_pie",Count:1b},sell:{id:"twilightforest:knightmetal_ingot",Count:2b},maxUses:1b}
execute if score @s Math matches 1 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:golden_apple",Count:4b},buyB:{id:"minecraft:golden_carrot",Count:4b},sell:{id:"twilightforest:knightmetal_ingot",Count:2b},maxUses:1b}
execute if score @s Math matches 2 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:cake",Count:1b},buyB:{id:"minecraft:cookie",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:2b},maxUses:1b}
execute if score @s Math matches 3 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:turtle_egg",Count:1b},buyB:{id:"minecraft:dried_kelp",Count:16b},sell:{id:"twilightforest:knightmetal_ingot",Count:2b},maxUses:1b}
execute if score @s Math matches 4 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:axolotl_bucket",Count:1b},buyB:{id:"minecraft:pufferfish_bucket",Count:1b},sell:{id:"twilightforest:knightmetal_ingot",Count:2b},maxUses:1b}