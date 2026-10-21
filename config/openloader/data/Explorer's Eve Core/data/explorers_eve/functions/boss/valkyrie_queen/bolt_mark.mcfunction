#Create a mark, then repeat. Scores ensure a cool line effect.
summon marker ~ ~ ~ {Tags:["ValkyrieBoltMark"]}
scoreboard players set @e[tag=ValkyrieBoltMark,limit=1,sort=nearest] ValkyrieBoltTime 40
scoreboard players operation @e[tag=ValkyrieBoltMark,limit=1,sort=nearest] ValkyrieBoltTime += @s ValkyrieBoltTime
scoreboard players add @s ValkyrieBoltTime 2
scoreboard players add @s[tag=ShortBolt] ValkyrieBoltTime 3
execute unless score @s ValkyrieBoltTime matches 20.. run function explorers_eve:boss/valkyrie_queen/bolt_aim