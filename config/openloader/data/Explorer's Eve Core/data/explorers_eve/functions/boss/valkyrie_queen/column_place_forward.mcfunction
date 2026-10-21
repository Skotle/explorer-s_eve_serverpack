#Move up.
summon area_effect_cloud ~ ~ ~ {Tags:["LightningColumn","LightningColumnDelayed"],Duration:500}
scoreboard players add @e[tag=LightningColumnCenter,limit=1,sort=nearest] ValkyrieColumnDelay 3
scoreboard players operation @e[tag=LightningColumn,limit=1,sort=nearest] ValkyrieColumnDelay = @e[tag=LightningColumnCenter,limit=1,sort=nearest] ValkyrieColumnDelay
execute unless block ~ ~ ~ #aether:angelic_blocks if entity @s[distance=..15] positioned ^ ^ ^1 run function explorers_eve:boss/valkyrie_queen/column_place_forward