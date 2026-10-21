#Oops, there goes the block!
data modify entity @s State set value 0
kill @s

execute at @w[tag=FinalBoss] positioned ~ ~5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["FinalBossLoot"]}
execute as @p[tag=FinalBattling] run witherstormmod kill @w[tag=FinalBoss]
kill @e[tag=CommandRide]
kill @e[type=witherstormmod:tentacle,predicate=!explorers_eve:bowels]
kill @e[tag=LightningMark,distance=..500]
kill @e[tag=QuakeMark,distance=..500]

function explorers_eve:final/config_reset

tag @a[tag=FinalBattling] add FinalBattleLoot

execute as @a[tag=FinalBattleDied] run function explorers_eve:final/player/respawn
execute as @a[tag=FinalBattling] at @s run function explorers_eve:final/player/unmark

data remove storage world FinalBossCheckpoint1
data remove storage world FinalBossCheckpoint2
data remove storage world FinalBossCheckpoint3
data remove storage world FinalBossCheckpoint4