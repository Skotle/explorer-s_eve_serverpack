#Load the dimension and put the player there. Unless it's in a dungeon.
tp @s ~ 200 ~
forceload add ~ ~ ~ ~
execute positioned over motion_blocking run tp @s ~ ~ ~
spreadplayers ~ ~ 4 4 false @s
execute at @s if block ~ ~-1 ~ #minecraft:leaves positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s if block ~ ~ ~ #minecraft:leaves positioned over motion_blocking run tp @s ~ ~ ~
execute at @s if block ~ ~-1 ~ lava positioned ~16 ~ ~ run function explorers_eve:item/resonator/teleport
execute at @s if predicate explorers_eve:structure/nature_dungeon positioned ~150 ~ ~ run function explorers_eve:item/resonator/teleport
execute at @s if predicate explorers_eve:structure/poison_dungeon positioned ~24 ~ ~ run function explorers_eve:item/resonator/teleport
execute at @s if predicate explorers_eve:structure/everbright_blinding_dungeon positioned ~24 ~ ~ run function explorers_eve:item/resonator/teleport
execute at @s if predicate explorers_eve:structure/everdawn_blinding_dungeon positioned ~24 ~ ~ run function explorers_eve:item/resonator/teleport
execute at @s run spawnpoint @s ~ ~ ~
forceload remove ~ ~ ~ ~
tag @s remove NeedsTeleport

#And make a return portal!
execute at @s align y if entity @s[tag=DawnTransport,tag=!BrightMark] unless entity @e[tag=BlueSkiesResonator,distance=..16] run summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","DawnResonator","Active","DelayTransport"]}
execute at @s align y if entity @s[tag=BrightTransport,tag=!DawnMark] unless entity @e[tag=BlueSkiesResonator,distance=..16] run summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","BrightResonator","Active","DelayTransport"]}
execute at @s align y if entity @s[tag=DawnMark,predicate=explorers_eve:everbright] unless entity @e[tag=BlueSkiesResonator,distance=..16] run summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","DawnResonator","Active","DelayTransport"]}
execute at @s align y if entity @s[tag=BrightMark,predicate=explorers_eve:everdawn] unless entity @e[tag=BlueSkiesResonator,distance=..16] run summon area_effect_cloud ~ ~0.25 ~ {Duration:5000,Tags:["BlueSkiesResonator","BrightResonator","Active","DelayTransport"]}