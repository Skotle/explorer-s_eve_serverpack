#Set the core of the column, then extend both up and down.
summon area_effect_cloud ~ ~ ~ {Tags:["LightningColumn","LightningColumnDelayed","LightningColumnCenter"],Duration:500}
scoreboard players set @e[tag=LightningColumnCenter,limit=1,sort=nearest] ValkyrieColumnDelay 61
execute as @e[tag=LightningColumnCenter,limit=1,sort=nearest] rotated ~ 90 positioned ^ ^ ^1 unless block ~ ~ ~ #aether:angelic_blocks run function explorers_eve:boss/valkyrie_queen/column_place_forward
scoreboard players set @e[tag=LightningColumnCenter,limit=1,sort=nearest] ValkyrieColumnDelay 61
execute as @e[tag=LightningColumnCenter,limit=1,sort=nearest] rotated ~ -90 positioned ^ ^ ^1 unless block ~ ~ ~ #aether:angelic_blocks run function explorers_eve:boss/valkyrie_queen/column_place_forward
scoreboard players set @e[tag=LightningColumnCenter,limit=1,sort=nearest] ValkyrieColumnDelay 61