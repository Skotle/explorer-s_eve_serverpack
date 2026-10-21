#Kill the boss and fix configs.
function explorers_eve:final/config_reset

execute unless predicate explorers_eve:glitch run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace witherstormmod:hardened_flesh_block
execute if entity @s[tag=!CommandDecoy,tag=!CommandFinalBoss] run summon item ~ ~1 ~ {Item:{id:"witherstormmod:command_block_book",Count:1b},Motion:[0d,0.25d,0d]}
execute if entity @s[tag=!CommandDecoy,tag=!CommandFinalBoss] run summon item ~ ~1 ~ {Item:{id:"witherstormmod:withered_nether_star",Count:1b},Motion:[0d,0.25d,0d],Tags:["FinalBossStar"]}
execute if entity @s[tag=CommandRematchIdle] run loot spawn ~ ~1 ~ loot explorers_eve:withered_beacon_materials
execute positioned ~ ~1 ~ as @e[type=item,distance=..0.1] run data merge entity @s {Glowing:1b,Invulnerable:1b,Health:10000,Age:-32768,PickupDelay:0}

execute if entity @s[tag=CommandDecoy] unless entity @w[tag=FinalBoss] run tellraw @a[tag=FinalBattling] [{"text":"<Command Block> "},{"text":"Error!","color":"red"},{"text":" Wither Storm defeated by Creative player! Tell: 'Nice try, but that won't work.'"}]
execute if entity @s[type=witherstormmod:command_block] run data modify entity @s State set value 0
tp @e[tag=CommandRide,limit=1,sort=nearest] ~ -1000 ~
kill @e[type=twilightforest:thrown_ice,distance=..500]
tp @e[tag=BarrierSource] ~ -1000 ~
kill @e[tag=BarrierSource]
tp @e[type=#witherstormmod:sickened_mobs,distance=..200] ~ -1000 ~
tp @e[tag=FinalBossMinion] ~ -1000 ~
kill @e[tag=FinalBossMinion]
kill @e[type=witherstormmod:tentacle,predicate=!explorers_eve:bowels]
kill @e[type=witherstormmod:block_cluster,distance=..300]
witherstormmod phase set @s 0
kill @e[tag=FinalBossSegment]
kill @e[type=witherstormmod:flaming_wither_skull]
kill @s

execute as @a[tag=FinalBattleDied] run function explorers_eve:final/player/respawn
execute as @a[tag=FinalBattling] at @s run function explorers_eve:final/player/unmark
tag @s add Despawning